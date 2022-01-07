
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef int ev_uint64_t ;


 int decode_int64_internal (int *,struct evbuffer*,int ) ;
 int evbuffer_drain (struct evbuffer*,int) ;

int
evtag_decode_int64(ev_uint64_t *pnumber, struct evbuffer *evbuf)
{
 int res = decode_int64_internal(pnumber, evbuf, 0);
 if (res != -1)
  evbuffer_drain(evbuf, res);

 return (res == -1 ? -1 : 0);
}
