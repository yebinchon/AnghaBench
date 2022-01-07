
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ lit_utf8_size_t ;
typedef int ecma_value_t ;
typedef int ecma_string_t ;


 int ECMA_FINALIZE_UTF8_STRING (int ,int ) ;
 int ECMA_STRING_TO_UTF8_STRING (int *,int ,int ) ;
 int ECMA_VALUE_UNDEFINED ;
 int code_utf8_buffer_p ;
 int code_utf8_buffer_size ;
 int ecma_op_eval_chars_buffer (int ,scalar_t__,int ) ;
 scalar_t__ ecma_string_get_size (int *) ;

ecma_value_t
ecma_op_eval (ecma_string_t *code_p,
              uint32_t parse_opts)
{
  ecma_value_t ret_value;

  lit_utf8_size_t chars_num = ecma_string_get_size (code_p);
  if (chars_num == 0)
  {
    ret_value = ECMA_VALUE_UNDEFINED;
  }
  else
  {
    ECMA_STRING_TO_UTF8_STRING (code_p, code_utf8_buffer_p, code_utf8_buffer_size);

    ret_value = ecma_op_eval_chars_buffer (code_utf8_buffer_p,
                                           chars_num,
                                           parse_opts);

    ECMA_FINALIZE_UTF8_STRING (code_utf8_buffer_p, code_utf8_buffer_size);
  }

  return ret_value;
}
