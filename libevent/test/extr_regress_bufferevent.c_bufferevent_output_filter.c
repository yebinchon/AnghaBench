
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef int ev_ssize_t ;
typedef enum bufferevent_flush_mode { ____Placeholder_bufferevent_flush_mode } bufferevent_flush_mode ;
typedef enum bufferevent_filter_result { ____Placeholder_bufferevent_filter_result } bufferevent_filter_result ;


 int BEV_ERROR ;
 int BEV_OK ;
 int assert (int) ;
 int bufferevent_write (struct bufferevent*,char*,int) ;
 int evbuffer_add (struct evbuffer*,...) ;
 int evbuffer_drain (struct evbuffer*,unsigned int) ;
 unsigned int evbuffer_get_length (struct evbuffer*) ;
 unsigned char* evbuffer_pullup (struct evbuffer*,unsigned int) ;
 int test_ok ;

__attribute__((used)) static enum bufferevent_filter_result
bufferevent_output_filter(struct evbuffer *src, struct evbuffer *dst,
    ev_ssize_t lim, enum bufferevent_flush_mode state, void *ctx)
{
 const unsigned char *buffer;
 unsigned i;
 struct bufferevent **bevp = ctx;

 ++test_ok;

 if (test_ok == 1) {
  buffer = evbuffer_pullup(src, evbuffer_get_length(src));
  for (i = 0; i < evbuffer_get_length(src); ++i) {
   evbuffer_add(dst, "x", 1);
   evbuffer_add(dst, buffer + i, 1);
  }
  evbuffer_drain(src, evbuffer_get_length(src));
 } else {
  return BEV_ERROR;
 }

 if (bevp && test_ok == 1) {
  int prev = ++test_ok;
  bufferevent_write(*bevp, "-", 1);


  assert(test_ok == prev);
  --test_ok;
 }

 return (BEV_OK);
}
