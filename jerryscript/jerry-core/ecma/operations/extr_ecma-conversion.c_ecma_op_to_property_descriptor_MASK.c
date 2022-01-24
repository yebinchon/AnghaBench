#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  ecma_value_t ;
struct TYPE_5__ {int flags; int /*<<< orphan*/ * set_p; int /*<<< orphan*/ * get_p; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ ecma_property_descriptor_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int ECMA_PROP_IS_CONFIGURABLE ; 
 int ECMA_PROP_IS_CONFIGURABLE_DEFINED ; 
 int ECMA_PROP_IS_ENUMERABLE ; 
 int ECMA_PROP_IS_ENUMERABLE_DEFINED ; 
 int ECMA_PROP_IS_GET_DEFINED ; 
 int ECMA_PROP_IS_SET_DEFINED ; 
 int ECMA_PROP_IS_VALUE_DEFINED ; 
 int ECMA_PROP_IS_WRITABLE ; 
 int ECMA_PROP_IS_WRITABLE_DEFINED ; 
 int ECMA_PROP_NO_OPTS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECMA_VALUE_EMPTY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_CONFIGURABLE ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_ENUMERABLE ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_GET ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_SET ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_VALUE ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_WRITABLE ; 
 int /*<<< orphan*/  configurable_prop_value ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  enumerable_prop_value ; 
 int /*<<< orphan*/  get_prop_value ; 
 int /*<<< orphan*/  set_prop_value ; 
 int /*<<< orphan*/  value_prop_value ; 
 int /*<<< orphan*/  writable_prop_value ; 

ecma_value_t
FUNC19 (ecma_value_t obj_value, /**< object value */
                                ecma_property_descriptor_t *out_prop_desc_p) /**< [out] filled property descriptor
                                                                                  if return value is normal
                                                                                  empty completion value */
{
  ecma_value_t ret_value = ECMA_VALUE_EMPTY;

  /* 1. */
  if (!FUNC11 (obj_value))
  {
    ret_value = FUNC17 (FUNC0 ("Expected an object."));
  }
  else
  {
    ecma_object_t *obj_p = FUNC8 (obj_value);

    /* 2. */
    ecma_property_descriptor_t prop_desc = FUNC13 ();

    /* 3. */
    FUNC3 (enumerable_prop_value,
                    FUNC15 (obj_p, FUNC7 (LIT_MAGIC_STRING_ENUMERABLE)),
                    ret_value);

    if (FUNC10 (enumerable_prop_value))
    {
      uint32_t is_enumerable = (FUNC16 (enumerable_prop_value) ? ECMA_PROP_IS_ENUMERABLE
                                                                           : ECMA_PROP_NO_OPTS);

      prop_desc.flags |= (uint16_t) (ECMA_PROP_IS_ENUMERABLE_DEFINED | is_enumerable);
    }

    FUNC1 (enumerable_prop_value);

    if (!FUNC2 (ret_value))
    {
      FUNC4 (FUNC9 (ret_value));

      /* 4. */
      FUNC3 (configurable_prop_value,
                      FUNC15 (obj_p, FUNC7 (LIT_MAGIC_STRING_CONFIGURABLE)),
                      ret_value);

      if (FUNC10 (configurable_prop_value))
      {
        uint32_t is_configurable = (FUNC16 (configurable_prop_value) ? ECMA_PROP_IS_CONFIGURABLE
                                                                                 : ECMA_PROP_NO_OPTS);

        prop_desc.flags |= (uint16_t) (ECMA_PROP_IS_CONFIGURABLE_DEFINED | is_configurable);
      }

      FUNC1 (configurable_prop_value);
    }

    if (!FUNC2 (ret_value))
    {
      FUNC4 (FUNC9 (ret_value));

      /* 5. */
      FUNC3 (value_prop_value,
                      FUNC15 (obj_p, FUNC7 (LIT_MAGIC_STRING_VALUE)),
                      ret_value);

      if (FUNC10 (value_prop_value))
      {
        prop_desc.flags |= ECMA_PROP_IS_VALUE_DEFINED;
        prop_desc.value = FUNC5 (value_prop_value);
      }

      FUNC1 (value_prop_value);
    }

    if (!FUNC2 (ret_value))
    {
      FUNC4 (FUNC9 (ret_value));

      /* 6. */
      FUNC3 (writable_prop_value,
                      FUNC15 (obj_p, FUNC7 (LIT_MAGIC_STRING_WRITABLE)),
                      ret_value);

      if (FUNC10 (writable_prop_value))
      {
        uint32_t is_writable = (FUNC16 (writable_prop_value) ? ECMA_PROP_IS_WRITABLE
                                                                         : ECMA_PROP_NO_OPTS);

        prop_desc.flags |= (uint16_t) (ECMA_PROP_IS_WRITABLE_DEFINED | is_writable);
      }

      FUNC1 (writable_prop_value);
    }

    if (!FUNC2 (ret_value))
    {
      FUNC4 (FUNC9 (ret_value));

      /* 7. */
      FUNC3 (get_prop_value,
                      FUNC15 (obj_p, FUNC7 (LIT_MAGIC_STRING_GET)),
                      ret_value);

      if (FUNC10 (get_prop_value))
      {
        if (!FUNC14 (get_prop_value)
            && !FUNC12 (get_prop_value))
        {
          ret_value = FUNC17 (FUNC0 ("Expected a function."));
        }
        else
        {
          prop_desc.flags |= ECMA_PROP_IS_GET_DEFINED;

          if (FUNC12 (get_prop_value))
          {
            prop_desc.get_p = NULL;
          }
          else
          {
            FUNC4 (FUNC11 (get_prop_value));

            ecma_object_t *get_p = FUNC8 (get_prop_value);
            FUNC18 (get_p);

            prop_desc.get_p = get_p;
          }
        }
      }

      FUNC1 (get_prop_value);
    }

    if (!FUNC2 (ret_value))
    {
      FUNC4 (FUNC9 (ret_value));

      /* 8. */
      FUNC3 (set_prop_value,
                      FUNC15 (obj_p, FUNC7 (LIT_MAGIC_STRING_SET)),
                      ret_value);

      if (FUNC10 (set_prop_value))
      {
        if (!FUNC14 (set_prop_value)
            && !FUNC12 (set_prop_value))
        {
          ret_value = FUNC17 (FUNC0 ("Expected a function."));
        }
        else
        {
          prop_desc.flags |= ECMA_PROP_IS_SET_DEFINED;

          if (FUNC12 (set_prop_value))
          {
            prop_desc.set_p = NULL;
          }
          else
          {
            FUNC4 (FUNC11 (set_prop_value));

            ecma_object_t *set_p = FUNC8 (set_prop_value);
            FUNC18 (set_p);

            prop_desc.set_p = set_p;
          }
        }
      }

      FUNC1 (set_prop_value);
    }

    if (!FUNC2 (ret_value))
    {
      FUNC4 (FUNC9 (ret_value));

      /* 9. */
      if ((prop_desc.flags & (ECMA_PROP_IS_VALUE_DEFINED | ECMA_PROP_IS_WRITABLE_DEFINED))
           && (prop_desc.flags & (ECMA_PROP_IS_GET_DEFINED | ECMA_PROP_IS_SET_DEFINED)))
      {
        ret_value = FUNC17 (FUNC0 ("Accessors cannot be writable."));
      }
    }

    if (!FUNC2 (ret_value))
    {
      FUNC4 (FUNC9 (ret_value));
    }
    else
    {
      FUNC6 (&prop_desc);
    }

    *out_prop_desc_p = prop_desc;
  }

  return ret_value;
}