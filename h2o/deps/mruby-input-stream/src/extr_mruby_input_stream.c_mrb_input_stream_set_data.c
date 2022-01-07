
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;
struct TYPE_4__ {int free_cb_data; int len; int base; int (* free_cb ) (int *,int ,int ,int ) ;} ;
typedef TYPE_1__ mrb_input_stream_t ;
typedef int mrb_input_stream_free_callback ;


 TYPE_1__* DATA_PTR (int ) ;
 int setup_stream (int *,TYPE_1__*,char const*,int ,int ,int ,void*) ;
 int stub1 (int *,int ,int ,int ) ;

void
mrb_input_stream_set_data(mrb_state *mrb, mrb_value self, const char *base, mrb_int len, mrb_int pos, mrb_input_stream_free_callback free_cb, void *free_cb_data)
{
  mrb_input_stream_t *stream = DATA_PTR(self);

  if (stream->free_cb != ((void*)0))
    stream->free_cb(mrb, stream->base, stream->len, stream->free_cb_data);
  setup_stream(mrb, stream, base, len, pos, free_cb, free_cb_data);
}
