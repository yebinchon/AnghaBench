
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;
typedef int mrb_int ;
typedef int mrb_input_stream_t ;
typedef int mrb_input_stream_free_callback ;


 scalar_t__ mrb_malloc (int *,int) ;
 int setup_stream (int *,int *,char const*,int ,int ,int ,void*) ;

mrb_input_stream_t*
mrb_input_stream_create(mrb_state *mrb, const char *base, mrb_int len, mrb_input_stream_free_callback free_cb, void *free_cb_data)
{
  mrb_input_stream_t *stream = (mrb_input_stream_t *)mrb_malloc(mrb, sizeof(mrb_input_stream_t));

  setup_stream(mrb, stream, base, len, 0, free_cb, free_cb_data);
  return stream;
}
