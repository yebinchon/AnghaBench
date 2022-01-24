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
typedef  int /*<<< orphan*/  ecma_value_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;
typedef  scalar_t__ ecma_length_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC3 () ; 

ecma_value_t
FUNC4 (const ecma_value_t *arguments_list_p, /**< arguments list */
                                        ecma_length_t arguments_list_len) /**< number of arguments */
{
  FUNC0 (arguments_list_len == 0 || arguments_list_p != NULL);

  if (arguments_list_len == 0)
  {
    ecma_object_t *obj_p = FUNC3 ();

    return FUNC1 (obj_p);
  }

  return FUNC2 (arguments_list_p[0]);
}