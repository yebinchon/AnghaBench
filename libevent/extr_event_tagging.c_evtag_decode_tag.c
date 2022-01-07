
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef int ev_uint32_t ;


 int decode_tag_internal (int *,struct evbuffer*,int) ;

int
evtag_decode_tag(ev_uint32_t *ptag, struct evbuffer *evbuf)
{
 return (decode_tag_internal(ptag, evbuf, 1 ));
}
