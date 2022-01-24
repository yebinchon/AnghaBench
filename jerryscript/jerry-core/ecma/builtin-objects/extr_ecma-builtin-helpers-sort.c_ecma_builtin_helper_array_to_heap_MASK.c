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
typedef  int /*<<< orphan*/  ecma_value_t ;
typedef  int /*<<< orphan*/  (* ecma_builtin_helper_sort_compare_fn_t ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ECMA_NUMBER_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECMA_VALUE_EMPTY ; 
 int /*<<< orphan*/  ECMA_VALUE_UNDEFINED ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  child_compare_value ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  swap_compare_value ; 

__attribute__((used)) static ecma_value_t
FUNC6 (ecma_value_t *array_p, /**< heap data array */
                                   uint32_t index, /**< current item index */
                                   uint32_t right, /**< right index is a maximum index */
                                   ecma_value_t compare_func, /**< compare function */
                                   const ecma_builtin_helper_sort_compare_fn_t sort_cb) /**< sorting cb */
{
  ecma_value_t ret_value = ECMA_VALUE_EMPTY;

  /* Left child of the current index. */
  uint32_t child = index * 2 + 1;
  ecma_value_t swap = array_p[index];
  bool should_break = false;

  while (child <= right && FUNC4 (ret_value) && !should_break)
  {
    if (child < right)
    {
      /* Compare the two child nodes. */
      FUNC1 (child_compare_value, sort_cb (array_p[child], array_p[child + 1], compare_func),
                      ret_value);

      FUNC2 (FUNC5 (child_compare_value));

      /* Use the child that is greater. */
      if (FUNC3 (child_compare_value) < ECMA_NUMBER_ZERO)
      {
        child++;
      }

      FUNC0 (child_compare_value);
    }

    if (FUNC4 (ret_value))
    {
      FUNC2 (child <= right);

      /* Compare current child node with the swap (tree top). */
      FUNC1 (swap_compare_value, sort_cb (array_p[child], swap, compare_func), ret_value);
      FUNC2 (FUNC5 (swap_compare_value));

      if (FUNC3 (swap_compare_value) <= ECMA_NUMBER_ZERO)
      {
        /* Break from loop if current child is less than swap (tree top) */
        should_break = true;
      }
      else
      {
        /* We have to move 'swap' lower in the tree, so shift current child up in the hierarchy. */
        uint32_t parent = (child - 1) / 2;
        FUNC2 (parent <= right);
        array_p[parent] = array_p[child];

        /* Update child to be the left child of the current node. */
        child = child * 2 + 1;
      }

      FUNC0 (swap_compare_value);
    }
  }

  /*
   * Loop ended, either current child does not exist, or is less than swap.
   * This means that 'swap' should be placed in the parent node.
   */
  uint32_t parent = (child - 1) / 2;
  FUNC2 (parent <= right);
  array_p[parent] = swap;

  if (FUNC4 (ret_value))
  {
    ret_value = ECMA_VALUE_UNDEFINED;
  }

  return ret_value;
}