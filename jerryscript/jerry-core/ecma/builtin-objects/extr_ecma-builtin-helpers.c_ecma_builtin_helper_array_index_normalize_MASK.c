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
typedef  int ecma_number_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 

uint32_t
FUNC5 (ecma_number_t index, /**< index */
                                           uint32_t length, /**< array's length */
                                           bool is_last_index_of) /**< true - normalize for lastIndexOf method*/
{
  uint32_t norm_index;

  if (!FUNC1 (index))
  {

    if (FUNC3 (index))
    {
      norm_index = 0;
    }
    else if (FUNC0 (index))
    {
      if (is_last_index_of)
      {
        norm_index = FUNC2 (index) ? (uint32_t) -1 : length - 1;
      }
      else
      {
        norm_index = FUNC2 (index) ? 0 : length;
      }
    }
    else
    {
      if (FUNC2 (index))
      {
        ecma_number_t index_neg = -index;

        if (is_last_index_of)
        {
          norm_index = length - FUNC4 (index_neg);
        }
        else
        {
          if (index_neg > length)
          {
            norm_index = 0;
          }
          else
          {
            norm_index = length - FUNC4 (index_neg);
          }
        }
      }
      else
      {
        if (index > length)
        {
          norm_index = is_last_index_of ? length - 1 : length;
        }
        else
        {
          norm_index = FUNC4 (index);
        }
      }
    }
  }
  else
  {
    norm_index = 0;
  }

  return norm_index;
}