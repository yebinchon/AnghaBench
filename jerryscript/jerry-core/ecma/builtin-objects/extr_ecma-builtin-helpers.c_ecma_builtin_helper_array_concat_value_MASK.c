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
typedef  int /*<<< orphan*/  ecma_value_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ECMA_OBJECT_TYPE_ARRAY ; 
 int /*<<< orphan*/  ECMA_PROPERTY_CONFIGURABLE_ENUMERABLE_WRITABLE ; 
 int /*<<< orphan*/  ECMA_VALUE_EMPTY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 

ecma_value_t
FUNC11 (ecma_object_t *array_obj_p, /**< array */
                                        uint32_t *length_p, /**< [in,out] array's length */
                                        ecma_value_t value) /**< value to concat */
{
  /* 5.b */
  if (FUNC8 (value))
  {
    ecma_object_t *obj_p = FUNC5 (value);

    if (FUNC6 (obj_p) == ECMA_OBJECT_TYPE_ARRAY)
    {
      /* 5.b.ii */
      uint32_t arg_len = FUNC2 (obj_p);

      /* 5.b.iii */
      for (uint32_t array_index = 0; array_index < arg_len; array_index++)
      {
        /* 5.b.iii.2 */
        ecma_value_t get_value = FUNC10 (obj_p, array_index);

        if (FUNC0 (get_value))
        {
          return get_value;
        }

        if (!FUNC7 (get_value))
        {
          continue;
        }

        /* 5.b.iii.3.b */
        /* This will always be a simple value since 'is_throw' is false, so no need to free. */
        ecma_value_t put_comp = FUNC3 (array_obj_p,
                                                                       *length_p + array_index,
                                                                       get_value,
                                                                       ECMA_PROPERTY_CONFIGURABLE_ENUMERABLE_WRITABLE);

        FUNC1 (FUNC9 (put_comp));
        FUNC4 (get_value);
      }

      *length_p += arg_len;
      return ECMA_VALUE_EMPTY;
    }
  }

  /* 5.c.i */
  /* This will always be a simple value since 'is_throw' is false, so no need to free. */
  ecma_value_t put_comp = FUNC3 (array_obj_p,
                                                                 (*length_p)++,
                                                                 value,
                                                                 ECMA_PROPERTY_CONFIGURABLE_ENUMERABLE_WRITABLE);
  FUNC1 (FUNC9 (put_comp));

  return ECMA_VALUE_EMPTY;
}