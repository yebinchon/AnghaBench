#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ lit_code_point_t ;
typedef  int ecma_char_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ LIT_UNICODE_CODE_POINT_MAX ; 
 scalar_t__ LIT_UTF16_BITS_IN_SURROGATE ; 
 scalar_t__ LIT_UTF16_CODE_UNIT_MAX ; 
 scalar_t__ LIT_UTF16_FIRST_SURROGATE_CODE_POINT ; 
 int LIT_UTF16_HIGH_SURROGATE_MARKER ; 

__attribute__((used)) static ecma_char_t
FUNC1 (lit_code_point_t code_point) /**< code point, should be > 0xFFFF */
{
  FUNC0 (code_point > LIT_UTF16_CODE_UNIT_MAX);
  FUNC0 (code_point <= LIT_UNICODE_CODE_POINT_MAX);

  ecma_char_t code_unit_bits;
  code_unit_bits = (ecma_char_t) ((code_point - LIT_UTF16_FIRST_SURROGATE_CODE_POINT) >> LIT_UTF16_BITS_IN_SURROGATE);

  return (LIT_UTF16_HIGH_SURROGATE_MARKER | code_unit_bits);
}