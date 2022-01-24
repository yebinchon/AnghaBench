#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  ecma_value_t ;
typedef  int /*<<< orphan*/  ecma_string_t ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ ecma_property_descriptor_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;
struct TYPE_9__ {size_t item_count; int /*<<< orphan*/ * buffer_p; } ;
typedef  TYPE_2__ ecma_collection_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECMA_LIST_CONVERT_FAST_ARRAYS ; 
 scalar_t__ ECMA_PROP_IS_CONFIGURABLE ; 
 int /*<<< orphan*/  ECMA_PROP_IS_THROW ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ecma_value_t
FUNC11 (ecma_object_t *obj_p) /**< routine's argument */
{
  ecma_collection_t *props_p = FUNC8 (obj_p, ECMA_LIST_CONVERT_FAST_ARRAYS);

  ecma_value_t *buffer_p = props_p->buffer_p;

  for (uint32_t i = 0; i < props_p->item_count; i++)
  {
    ecma_string_t *property_name_p = FUNC4 (buffer_p[i]);

    /* 2.a */
    ecma_property_descriptor_t prop_desc;

    if (!FUNC7 (obj_p, property_name_p, &prop_desc))
    {
      continue;
    }

    /* 2.b */
    prop_desc.flags &= (uint16_t) ~ECMA_PROP_IS_CONFIGURABLE;
    prop_desc.flags |= ECMA_PROP_IS_THROW;

    /* 2.c */
    ecma_value_t define_own_prop_ret = FUNC6 (obj_p,
                                                                           property_name_p,
                                                                           &prop_desc);

    FUNC2 (&prop_desc);

    if (FUNC0 (define_own_prop_ret))
    {
      FUNC1 (props_p);
      return define_own_prop_ret;
    }

    FUNC3 (define_own_prop_ret);
  }

  FUNC1 (props_p);

  /* 3. */
  FUNC10 (obj_p, false);

  /* 4. */
  FUNC9 (obj_p);
  return FUNC5 (obj_p);
}