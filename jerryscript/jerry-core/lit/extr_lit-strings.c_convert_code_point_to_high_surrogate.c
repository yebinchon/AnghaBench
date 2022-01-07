
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lit_code_point_t ;
typedef int ecma_char_t ;


 int JERRY_ASSERT (int) ;
 scalar_t__ LIT_UNICODE_CODE_POINT_MAX ;
 scalar_t__ LIT_UTF16_BITS_IN_SURROGATE ;
 scalar_t__ LIT_UTF16_CODE_UNIT_MAX ;
 scalar_t__ LIT_UTF16_FIRST_SURROGATE_CODE_POINT ;
 int LIT_UTF16_HIGH_SURROGATE_MARKER ;

__attribute__((used)) static ecma_char_t
convert_code_point_to_high_surrogate (lit_code_point_t code_point)
{
  JERRY_ASSERT (code_point > LIT_UTF16_CODE_UNIT_MAX);
  JERRY_ASSERT (code_point <= LIT_UNICODE_CODE_POINT_MAX);

  ecma_char_t code_unit_bits;
  code_unit_bits = (ecma_char_t) ((code_point - LIT_UTF16_FIRST_SURROGATE_CODE_POINT) >> LIT_UTF16_BITS_IN_SURROGATE);

  return (LIT_UTF16_HIGH_SURROGATE_MARKER | code_unit_bits);
}
