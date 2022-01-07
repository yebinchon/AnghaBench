
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef int number ;
typedef int ev_uint8_t ;
typedef int ev_uint32_t ;


 size_t INT_MAX ;
 int evbuffer_drain (struct evbuffer*,size_t) ;
 size_t evbuffer_get_length (struct evbuffer*) ;
 int* evbuffer_pullup (struct evbuffer*,size_t) ;

__attribute__((used)) static int
decode_tag_internal(ev_uint32_t *ptag, struct evbuffer *evbuf, int dodrain)
{
 ev_uint32_t number = 0;
 size_t len = evbuffer_get_length(evbuf);
 ev_uint8_t *data;
 size_t count = 0;
 int shift = 0, done = 0;





 data = evbuffer_pullup(
  evbuf, len < sizeof(number) + 1 ? len : sizeof(number) + 1);
 if (!data)
  return (-1);

 while (count++ < len) {
  ev_uint8_t lower = *data++;
  if (shift >= 28) {

   if (shift > 28)
    return (-1);
   if ((lower & 0x7f) > 15)
    return (-1);
  }
  number |= (lower & (unsigned)0x7f) << shift;
  shift += 7;

  if (!(lower & 0x80)) {
   done = 1;
   break;
  }
 }

 if (!done)
  return (-1);

 if (dodrain)
  evbuffer_drain(evbuf, count);

 if (ptag != ((void*)0))
  *ptag = number;

 return count > INT_MAX ? INT_MAX : (int)(count);
}
