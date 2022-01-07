
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mrb_state ;
typedef int mrb_int ;
struct TYPE_3__ {char* base; int len; int pos; int * free_cb_data; int * free_cb; } ;
typedef TYPE_1__ mrb_input_stream_t ;
typedef int * mrb_input_stream_free_callback ;


 int * default_free_cb ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ mrb_malloc (int *,int) ;

__attribute__((used)) static void setup_stream(mrb_state *mrb, mrb_input_stream_t *stream, const char *base, mrb_int len, mrb_int pos, mrb_input_stream_free_callback free_cb, void *free_cb_data)
{
  if (free_cb == ((void*)0)) {
    if (len > 0) {
      char *dst_base = (char *)mrb_malloc(mrb, sizeof(char)*len);
      memcpy(dst_base, base, len);
      stream->base = dst_base;
      stream->len = len;
    } else {
      stream->base = ((void*)0);
      stream->len = len;
    }
    stream->free_cb = default_free_cb;
    stream->free_cb_data = ((void*)0);
  } else {
    stream->base = base;
    stream->len = len;
    stream->free_cb = free_cb;
    stream->free_cb_data = free_cb_data;
  }

  stream->pos = pos;
}
