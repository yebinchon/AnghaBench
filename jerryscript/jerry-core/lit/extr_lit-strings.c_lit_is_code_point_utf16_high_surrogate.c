
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lit_code_point_t ;


 scalar_t__ LIT_UTF16_HIGH_SURROGATE_MAX ;
 scalar_t__ LIT_UTF16_HIGH_SURROGATE_MIN ;

bool
lit_is_code_point_utf16_high_surrogate (lit_code_point_t code_point)
{
  return LIT_UTF16_HIGH_SURROGATE_MIN <= code_point && code_point <= LIT_UTF16_HIGH_SURROGATE_MAX;
}
