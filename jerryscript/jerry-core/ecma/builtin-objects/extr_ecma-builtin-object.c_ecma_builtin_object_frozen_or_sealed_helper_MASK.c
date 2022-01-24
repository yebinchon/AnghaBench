#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  ecma_value_t ;
typedef  int /*<<< orphan*/  ecma_string_t ;
typedef  int /*<<< orphan*/  ecma_property_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;
struct TYPE_4__ {size_t item_count; int /*<<< orphan*/ * buffer_p; } ;
typedef  TYPE_1__ ecma_collection_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECMA_LIST_NO_OPTS ; 
 int ECMA_OBJECT_ROUTINE_IS_FROZEN ; 
 int ECMA_OBJECT_ROUTINE_IS_SEALED ; 
 int /*<<< orphan*/  ECMA_PROPERTY_GET_NO_OPTIONS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ECMA_PROPERTY_TYPE_NAMEDACCESSOR ; 
 int /*<<< orphan*/  ECMA_VALUE_FALSE ; 
 int /*<<< orphan*/  ECMA_VALUE_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ecma_value_t
FUNC9 (ecma_object_t *obj_p, /**< routine's argument */
                                             int mode) /**< routine mode */
{
  FUNC1 (mode == ECMA_OBJECT_ROUTINE_IS_FROZEN || mode == ECMA_OBJECT_ROUTINE_IS_SEALED);

  /* 3. */
  if (FUNC3 (obj_p))
  {
    return ECMA_VALUE_FALSE;
  }

  /* the value can be updated in the loop below */
  ecma_value_t ret_value = ECMA_VALUE_TRUE;

  /* 2. */
  ecma_collection_t *props_p = FUNC8 (obj_p, ECMA_LIST_NO_OPTS);

  ecma_value_t *buffer_p = props_p->buffer_p;

  for (uint32_t i = 0; i < props_p->item_count; i++)
  {
    ecma_string_t *property_name_p = FUNC4 (buffer_p[i]);

    /* 2.a */
    ecma_property_t property = FUNC7 (obj_p,
                                                                property_name_p,
                                                                NULL,
                                                                ECMA_PROPERTY_GET_NO_OPTIONS);

    /* 2.b for isFrozen */
    if (mode == ECMA_OBJECT_ROUTINE_IS_FROZEN
        && FUNC0 (property) != ECMA_PROPERTY_TYPE_NAMEDACCESSOR
        && FUNC6 (property))
    {
      ret_value = ECMA_VALUE_FALSE;
      break;
    }

    /* 2.b for isSealed, 2.c for isFrozen */
    if (FUNC5 (property))
    {
      ret_value = ECMA_VALUE_FALSE;
      break;
    }
  }

  FUNC2 (props_p);

  return ret_value;
}