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
typedef  unsigned int ecma_length_t ;

/* Variables and functions */
 int /*<<< orphan*/  const ECMA_VALUE_UNDEFINED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static ecma_value_t
FUNC1 (ecma_object_t *func_obj_p , /**< this argument object */
                                             const ecma_value_t *arguments_list_p, /**< list of arguments */
                                             ecma_length_t arguments_number) /**< number of arguments */
{
  if (arguments_number == 0)
  {
    /* Even a 'this' argument is missing. */
    return FUNC0 (func_obj_p,
                                  ECMA_VALUE_UNDEFINED,
                                  NULL,
                                  0);
  }

  return FUNC0 (func_obj_p,
                                arguments_list_p[0],
                                arguments_list_p + 1,
                                (ecma_length_t) (arguments_number - 1u));
}