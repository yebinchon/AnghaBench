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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  ecma_number_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

uint32_t
FUNC4 (ecma_number_t index, /**< index */
                                            uint32_t length, /**< string's length */
                                            bool nan_to_zero) /**< whether NaN is mapped to zero (t) or length (f) */
{
  uint32_t norm_index = 0;

  if (FUNC1 (index))
  {
    if (!nan_to_zero)
    {
      norm_index = length;
    }
  }
  else if (!FUNC2 (index))
  {
    if (FUNC0 (index))
    {
      norm_index = length;
    }
    else
    {
      norm_index = FUNC3 (index);

      if (norm_index > length)
      {
        norm_index = length;
      }
    }
  }

  return norm_index;
}