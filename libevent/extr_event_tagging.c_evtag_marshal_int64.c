
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef int ev_uint8_t ;
typedef int ev_uint64_t ;
typedef int ev_uint32_t ;


 int encode_int64_internal (int *,int ) ;
 int evbuffer_add (struct evbuffer*,int *,int) ;
 int evtag_encode_int (struct evbuffer*,int) ;
 int evtag_encode_tag (struct evbuffer*,int ) ;

void
evtag_marshal_int64(struct evbuffer *evbuf, ev_uint32_t tag,
    ev_uint64_t integer)
{
 ev_uint8_t data[9];
 int len = encode_int64_internal(data, integer);

 evtag_encode_tag(evbuf, tag);
 evtag_encode_int(evbuf, len);
 evbuffer_add(evbuf, data, len);
}
