
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;
struct TYPE_3__ {char* base; void* free_cb_data; int free_cb; int pos; int len; } ;
typedef TYPE_1__ mrb_input_stream_t ;
typedef int mrb_input_stream_free_callback ;


 TYPE_1__* DATA_PTR (int ) ;

void
mrb_input_stream_get_data(mrb_state *mrb, mrb_value self, const char **base, mrb_int *len, mrb_int *pos, mrb_input_stream_free_callback *free_cb, void **free_cb_data)
{
  mrb_input_stream_t *stream = DATA_PTR(self);

  if (base != ((void*)0))
    *base = stream->base;
  if (len != ((void*)0))
    *len = stream->len;
  if (pos != ((void*)0))
    *pos = stream->pos;
  if (free_cb != ((void*)0))
    *free_cb = stream->free_cb;
  if (free_cb_data != ((void*)0))
    *free_cb_data = stream->free_cb_data;
}
