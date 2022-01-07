
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef scalar_t__ ev_uint32_t ;


 int decode_tag_internal (scalar_t__*,struct evbuffer*,int) ;
 scalar_t__ evbuffer_get_length (struct evbuffer*) ;
 int evtag_decode_int (scalar_t__*,struct evbuffer*) ;

int
evtag_unmarshal_header(struct evbuffer *evbuf, ev_uint32_t *ptag)
{
 ev_uint32_t len;

 if (decode_tag_internal(ptag, evbuf, 1 ) == -1)
  return (-1);
 if (evtag_decode_int(&len, evbuf) == -1)
  return (-1);

 if (evbuffer_get_length(evbuf) < len)
  return (-1);

 return (len);
}
