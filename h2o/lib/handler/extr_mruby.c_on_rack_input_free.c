
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int mrb_nil_value () ;

__attribute__((used)) static void on_rack_input_free(mrb_state *mrb, const char *base, mrb_int len, void *_input_stream)
{

    mrb_value *input_stream = _input_stream;
    *input_stream = mrb_nil_value();
}
