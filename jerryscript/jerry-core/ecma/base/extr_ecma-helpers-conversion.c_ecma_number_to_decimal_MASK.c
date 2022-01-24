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
typedef  int /*<<< orphan*/  lit_utf8_size_t ;
typedef  int /*<<< orphan*/  lit_utf8_byte_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  scalar_t__ ecma_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (double,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

lit_utf8_size_t
FUNC6 (ecma_number_t num, /**< ecma-number */
                        lit_utf8_byte_t *out_digits_p, /**< [out] buffer to fill with digits */
                        int32_t *out_decimal_exp_p) /**< [out] decimal exponent */
{
  FUNC0 (!FUNC3 (num));
  FUNC0 (!FUNC5 (num));
  FUNC0 (!FUNC2 (num));
  FUNC0 (!FUNC4 (num));

  return FUNC1 ((double) num, out_digits_p, out_decimal_exp_p);
}