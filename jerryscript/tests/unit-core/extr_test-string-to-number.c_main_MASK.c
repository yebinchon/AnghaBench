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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  nums ;
typedef  int /*<<< orphan*/  jerry_char_t ;
typedef  scalar_t__ const ecma_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  INFINITY ; 
 int /*<<< orphan*/  NAN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__ const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 

int
FUNC4 (void)
{
  FUNC0 ();

  const jerry_char_t *strings[] =
  {
    (const jerry_char_t *) "1",
    (const jerry_char_t *) "0.5",
    (const jerry_char_t *) "12345",
    (const jerry_char_t *) "1e-45",
    (const jerry_char_t *) "-2.5e+38",
    (const jerry_char_t *) "-2.5e38",
    (const jerry_char_t *) "- 2.5e+38",
    (const jerry_char_t *) "-2 .5e+38",
    (const jerry_char_t *) "-2. 5e+38",
    (const jerry_char_t *) "-2.5e+ 38",
    (const jerry_char_t *) "-2.5 e+38",
    (const jerry_char_t *) "-2.5e +38",
    (const jerry_char_t *) "NaN",
    (const jerry_char_t *) "abc",
    (const jerry_char_t *) "   Infinity  ",
    (const jerry_char_t *) "-Infinity",
    (const jerry_char_t *) "0",
    (const jerry_char_t *) "0",
  };

  const ecma_number_t nums[] =
  {
    (ecma_number_t) 1.0,
    (ecma_number_t) 0.5,
    (ecma_number_t) 12345.0,
    (ecma_number_t) 1.0e-45,
    (ecma_number_t) -2.5e+38,
    (ecma_number_t) -2.5e+38,
    (ecma_number_t) NAN,
    (ecma_number_t) NAN,
    (ecma_number_t) NAN,
    (ecma_number_t) NAN,
    (ecma_number_t) NAN,
    (ecma_number_t) NAN,
    (ecma_number_t) NAN,
    (ecma_number_t) NAN,
    (ecma_number_t) INFINITY,
    (ecma_number_t) -INFINITY,
    (ecma_number_t) +0.0,
    (ecma_number_t) -0.0
  };

  for (uint32_t i = 0;
       i < sizeof (nums) / sizeof (nums[0]);
       i++)
  {
    ecma_number_t num = FUNC2 (strings[i], FUNC3 (strings[i]));

    if (num != nums[i]
        && (!FUNC1 (num)
            || !FUNC1 (nums[i])))
    {
      return 1;
    }
  }

  return 0;
}