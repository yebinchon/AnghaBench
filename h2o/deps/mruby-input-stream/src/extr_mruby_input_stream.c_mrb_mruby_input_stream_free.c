
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_3__ {int free_cb_data; int len; int base; int (* free_cb ) (int *,int ,int ,int ) ;} ;
typedef TYPE_1__ mrb_input_stream_t ;


 int mrb_free (int *,TYPE_1__*) ;
 int stub1 (int *,int ,int ,int ) ;

__attribute__((used)) static void
mrb_mruby_input_stream_free(mrb_state *mrb, void *ptr)
{
  mrb_input_stream_t *stream = (mrb_input_stream_t *)ptr;
  if (stream->free_cb != ((void*)0))
    stream->free_cb(mrb, stream->base, stream->len, stream->free_cb_data);
  mrb_free(mrb, stream);
}
