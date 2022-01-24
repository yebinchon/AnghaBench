#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  ecma_value_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;
struct TYPE_10__ {size_t item_count; int /*<<< orphan*/ * buffer_p; } ;
typedef  TYPE_1__ ecma_collection_t ;
struct TYPE_11__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ECMA_LIST_CONVERT_FAST_ARRAYS ; 
 int ECMA_LIST_ENUMERABLE ; 
 int /*<<< orphan*/  ECMA_PROP_IS_THROW ; 
 int /*<<< orphan*/  ECMA_VALUE_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  ecma_property_descriptor_t ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_2__* property_descriptors ; 

__attribute__((used)) static ecma_value_t
FUNC16 (ecma_object_t *obj_p, /**< routine's first argument */
                                              ecma_value_t arg2) /**< routine's second argument */
{
  /* 2. */
  ecma_value_t props = FUNC13 (arg2);

  if (FUNC0 (props))
  {
    return props;
  }

  ecma_object_t *props_p = FUNC7 (props);
  /* 3. */
  ecma_collection_t *prop_names_p = FUNC12 (props_p, ECMA_LIST_CONVERT_FAST_ARRAYS
                                                                                | ECMA_LIST_ENUMERABLE);
  ecma_value_t ret_value = ECMA_VALUE_ERROR;

  ecma_value_t *buffer_p = prop_names_p->buffer_p;

  /* 4. */
  FUNC1 (property_descriptors, prop_names_p->item_count, ecma_property_descriptor_t);
  uint32_t property_descriptor_number = 0;

  for (uint32_t i = 0; i < prop_names_p->item_count; i++)
  {
    /* 5.a */
    ecma_value_t desc_obj = FUNC11 (props_p, FUNC8 (buffer_p[i]));

    if (FUNC0 (desc_obj))
    {
      goto cleanup;
    }

    /* 5.b */
    ecma_value_t conv_result = FUNC14 (desc_obj,
                                                               &property_descriptors[property_descriptor_number]);

    property_descriptors[property_descriptor_number].flags |= ECMA_PROP_IS_THROW;

    FUNC6 (desc_obj);

    if (FUNC0 (conv_result))
    {
      goto cleanup;
    }

    property_descriptor_number++;

    FUNC6 (conv_result);
  }

  /* 6. */
  buffer_p = prop_names_p->buffer_p;

  for (uint32_t i = 0; i < prop_names_p->item_count; i++)
  {
    ecma_value_t define_own_prop_ret =  FUNC10 (obj_p,
                                                                            FUNC8 (buffer_p[i]),
                                                                            &property_descriptors[i]);
    if (FUNC0 (define_own_prop_ret))
    {
      goto cleanup;
    }

    FUNC6 (define_own_prop_ret);
  }

  FUNC15 (obj_p);
  ret_value = FUNC9 (obj_p);

cleanup:
  /* Clean up. */
  for (uint32_t index = 0;
       index < property_descriptor_number;
       index++)
  {
    FUNC5 (&property_descriptors[index]);
  }

  FUNC2 (property_descriptors);

  FUNC3 (prop_names_p);

  FUNC4 (props_p);

  return ret_value;
}