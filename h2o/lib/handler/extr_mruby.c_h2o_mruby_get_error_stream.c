
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int h2o_mruby_error_stream_t ;


 int error_stream_type ;
 int * mrb_data_check_get_ptr (int *,int ,int *) ;

h2o_mruby_error_stream_t *h2o_mruby_get_error_stream(mrb_state *mrb, mrb_value obj)
{
    h2o_mruby_error_stream_t *error_stream = mrb_data_check_get_ptr(mrb, obj, &error_stream_type);
    return error_stream;
}
