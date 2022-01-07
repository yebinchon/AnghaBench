
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;
typedef int mrb_input_stream_t ;


 int * DATA_PTR (int ) ;
 int E_ARGUMENT_ERROR ;
 int assert_is_open (int *,int *) ;
 int mrb_fixnum_value (int) ;
 int mrb_get_args (int *,char*,int*) ;
 int mrb_nil_value () ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_raisef (int *,int ,char*,int ) ;
 int seek_char (int *,int) ;

__attribute__((used)) static mrb_value
mrb_input_stream_byteindex(mrb_state *mrb, mrb_value self)
{
  mrb_input_stream_t *stream = DATA_PTR(self);
  mrb_int chr, n, len;

  assert_is_open(mrb, stream);

  n = mrb_get_args(mrb, "i", &chr);
  if (n != 1) {
    mrb_raisef(mrb, E_ARGUMENT_ERROR, "wrong number of arguments (%S for 1)", mrb_fixnum_value(n));
  }
  if (chr < 0 || chr > 255) {
    mrb_raise(mrb, E_ARGUMENT_ERROR, "index should be a byte (0 - 255)");
  }

  len = seek_char(stream, chr);
  if (len < 0) {
    return mrb_nil_value();
  }

  return mrb_fixnum_value(len);
}
