#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ clamp; scalar_t__ round; } ;
typedef  TYPE_1__ jerryx_arg_int_option_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;
typedef  int /*<<< orphan*/  jerry_char_t ;

/* Variables and functions */
 scalar_t__ JERRYX_ARG_FLOOR ; 
 scalar_t__ JERRYX_ARG_NO_CLAMP ; 
 scalar_t__ JERRYX_ARG_ROUND ; 
 int /*<<< orphan*/  JERRY_ERROR_TYPE ; 
 double FUNC0 (double) ; 
 double FUNC1 (double) ; 
 scalar_t__ FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static jerry_value_t
FUNC5 (double *d, /**< [in, out] the number to be processed */
                                  double min, /**< the min value for clamping */
                                  double max, /**< the max value for clamping */
                                  jerryx_arg_int_option_t option) /**< the converting policies */
{
  if (FUNC2 (*d))
  {
    return FUNC3 (JERRY_ERROR_TYPE,
                               (jerry_char_t *) "The number is NaN.");
  }

  if (option.clamp == JERRYX_ARG_NO_CLAMP)
  {
    if (*d > max || *d < min)
    {
      return FUNC3 (JERRY_ERROR_TYPE,
                                 (jerry_char_t *) "The number is out of range.");
    }
  }
  else
  {
    *d = *d < min ? min : *d;
    *d = *d > max ? max : *d;
  }

  if (option.round == JERRYX_ARG_ROUND)
  {
    *d = (*d >= 0.0) ? FUNC1 (*d + 0.5) : FUNC0 (*d - 0.5);
  }
  else if (option.round == JERRYX_ARG_FLOOR)
  {
    *d = FUNC1 (*d);
  }
  else
  {
    *d = FUNC0 (*d);
  }

  return FUNC4 ();
}