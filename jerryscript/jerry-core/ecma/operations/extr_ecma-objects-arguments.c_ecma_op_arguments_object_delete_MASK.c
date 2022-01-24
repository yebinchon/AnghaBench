#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ ecma_value_t ;
typedef  int /*<<< orphan*/  ecma_string_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;
struct TYPE_5__ {scalar_t__ length; } ;
struct TYPE_6__ {TYPE_1__ u1; } ;
struct TYPE_7__ {TYPE_2__ pseudo_array; } ;
struct TYPE_8__ {TYPE_3__ u; } ;
typedef  TYPE_4__ ecma_extended_object_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ ECMA_STRING_NOT_ARRAY_INDEX ; 
 scalar_t__ ECMA_VALUE_EMPTY ; 
 scalar_t__ ECMA_VALUE_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

ecma_value_t
FUNC8 (ecma_object_t *object_p, /**< the object */
                                 ecma_string_t *property_name_p, /**< property name */
                                 bool is_throw) /**< flag that controls failure handling */
{
  /* 3. */
  ecma_value_t ret_value = FUNC6 (object_p, property_name_p, is_throw);

  if (FUNC0 (ret_value))
  {
    return ret_value;
  }

  FUNC1 (FUNC4 (ret_value));

  if (FUNC5 (ret_value))
  {
    uint32_t index = FUNC7 (property_name_p);

    if (index != ECMA_STRING_NOT_ARRAY_INDEX)
    {
      ecma_extended_object_t *ext_object_p = (ecma_extended_object_t *) object_p;

      if (index < ext_object_p->u.pseudo_array.u1.length)
      {
        ecma_value_t *arg_Literal_p = (ecma_value_t *) (ext_object_p + 1);

        if (arg_Literal_p[index] != ECMA_VALUE_EMPTY)
        {
          ecma_string_t *name_p = FUNC3 (arg_Literal_p[index]);
          FUNC2 (name_p);
          arg_Literal_p[index] = ECMA_VALUE_EMPTY;
        }
      }
    }

    ret_value = ECMA_VALUE_TRUE;
  }

  return ret_value;
}