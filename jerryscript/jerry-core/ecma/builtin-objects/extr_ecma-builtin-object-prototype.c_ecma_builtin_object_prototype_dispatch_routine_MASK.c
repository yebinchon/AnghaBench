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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  ecma_value_t ;
typedef  int /*<<< orphan*/  ecma_string_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;
typedef  int /*<<< orphan*/  ecma_length_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ECMA_OBJECT_PROTOTYPE_HAS_OWN_PROPERTY ; 
 scalar_t__ ECMA_OBJECT_PROTOTYPE_IS_PROTOTYPE_OF ; 
 scalar_t__ ECMA_OBJECT_PROTOTYPE_TO_STRING ; 
 scalar_t__ ECMA_OBJECT_PROTOTYPE_VALUE_OF ; 
 int /*<<< orphan*/  ECMA_VALUE_ERROR ; 
 int /*<<< orphan*/  ECMA_VALUE_FALSE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/  const) ; 

ecma_value_t
FUNC15 (uint16_t builtin_routine_id, /**< built-in wide routine
                                                                              *   identifier */
                                                ecma_value_t this_arg, /**< 'this' argument value */
                                                const ecma_value_t arguments_list_p[], /**< list of arguments
                                                                                      *   passed to routine */
                                                ecma_length_t arguments_number) /**< length of arguments' list */
{
  FUNC2 (arguments_number);

  /* no specialization */
  if (builtin_routine_id <= ECMA_OBJECT_PROTOTYPE_VALUE_OF)
  {
    if (builtin_routine_id == ECMA_OBJECT_PROTOTYPE_TO_STRING)
    {
      return FUNC7 (this_arg);
    }

    FUNC1 (builtin_routine_id <= ECMA_OBJECT_PROTOTYPE_VALUE_OF);

    return FUNC8 (this_arg);
  }

  if (builtin_routine_id <= ECMA_OBJECT_PROTOTYPE_IS_PROTOTYPE_OF)
  {
    if (builtin_routine_id == ECMA_OBJECT_PROTOTYPE_IS_PROTOTYPE_OF)
    {
      /* 15.2.4.6.1. */
      if (!FUNC12 (arguments_list_p[0]))
      {
        return ECMA_VALUE_FALSE;
      }
    }

    ecma_value_t to_object = FUNC13 (this_arg);

    if (FUNC0 (to_object))
    {
      return to_object;
    }

    ecma_object_t *obj_p = FUNC11 (to_object);

    ecma_value_t ret_value;

    if (builtin_routine_id == ECMA_OBJECT_PROTOTYPE_IS_PROTOTYPE_OF)
    {
      ret_value = FUNC4 (obj_p, arguments_list_p[0]);
    }
    else
    {
      ret_value = FUNC6 (obj_p);
    }

    FUNC10 (obj_p);

    return ret_value;
  }

  FUNC1 (builtin_routine_id >= ECMA_OBJECT_PROTOTYPE_HAS_OWN_PROPERTY);

  ecma_string_t *prop_name_p = FUNC14 (arguments_list_p[0]);

  if (prop_name_p == NULL)
  {
    return ECMA_VALUE_ERROR;
  }

  ecma_value_t to_object = FUNC13 (this_arg);

  if (FUNC0 (to_object))
  {
    FUNC9 (prop_name_p);
    return to_object;
  }

  ecma_object_t *obj_p = FUNC11 (to_object);

  ecma_value_t ret_value;

  if (builtin_routine_id == ECMA_OBJECT_PROTOTYPE_HAS_OWN_PROPERTY)
  {
    ret_value = FUNC3 (obj_p, prop_name_p);
  }
  else
  {
    ret_value = FUNC5 (obj_p, prop_name_p);
  }

  FUNC9 (prop_name_p);
  FUNC10 (obj_p);

  return ret_value;
}