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
typedef  int /*<<< orphan*/  ecma_value_t ;
struct TYPE_5__ {int flags; void* value; int /*<<< orphan*/ * set_p; int /*<<< orphan*/ * get_p; } ;
typedef  TYPE_1__ ecma_property_descriptor_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;

/* Variables and functions */
 int ECMA_PROP_IS_CONFIGURABLE ; 
 int ECMA_PROP_IS_CONFIGURABLE_DEFINED ; 
 int ECMA_PROP_IS_ENUMERABLE ; 
 int ECMA_PROP_IS_ENUMERABLE_DEFINED ; 
 int ECMA_PROP_IS_GET_DEFINED ; 
 int ECMA_PROP_IS_SET_DEFINED ; 
 int ECMA_PROP_IS_VALUE_DEFINED ; 
 int ECMA_PROP_IS_WRITABLE ; 
 int ECMA_PROP_IS_WRITABLE_DEFINED ; 
 void* ECMA_VALUE_UNDEFINED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_CONFIGURABLE ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_ENUMERABLE ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_GET ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_SET ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_VALUE ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_WRITABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 TYPE_1__ FUNC4 () ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

ecma_object_t *
FUNC8 (const ecma_property_descriptor_t *src_prop_desc_p) /**< property descriptor */
{
  /* 2. */
  ecma_object_t *obj_p = FUNC6 ();

  ecma_value_t completion;
  ecma_property_descriptor_t prop_desc = FUNC4 ();
  {
    prop_desc.flags = (ECMA_PROP_IS_VALUE_DEFINED
                       | ECMA_PROP_IS_WRITABLE_DEFINED
                       | ECMA_PROP_IS_WRITABLE
                       | ECMA_PROP_IS_ENUMERABLE_DEFINED
                       | ECMA_PROP_IS_ENUMERABLE
                       | ECMA_PROP_IS_CONFIGURABLE_DEFINED
                       | ECMA_PROP_IS_CONFIGURABLE);
  }

  /* 3. */
  if (src_prop_desc_p->flags & (ECMA_PROP_IS_VALUE_DEFINED | ECMA_PROP_IS_WRITABLE_DEFINED))
  {
    FUNC0 ((prop_desc.flags & (ECMA_PROP_IS_VALUE_DEFINED | ECMA_PROP_IS_WRITABLE_DEFINED))
                   == (ECMA_PROP_IS_VALUE_DEFINED | ECMA_PROP_IS_WRITABLE_DEFINED));

    /* a. */
    prop_desc.value = src_prop_desc_p->value;

    completion = FUNC7 (obj_p,
                                                     FUNC1 (LIT_MAGIC_STRING_VALUE),
                                                     &prop_desc);
    FUNC0 (FUNC2 (completion));

    /* b. */
    prop_desc.value = FUNC3 (src_prop_desc_p->flags & ECMA_PROP_IS_WRITABLE);

    completion = FUNC7 (obj_p,
                                                     FUNC1 (LIT_MAGIC_STRING_WRITABLE),
                                                     &prop_desc);
    FUNC0 (FUNC2 (completion));
  }
  else
  {
    /* 4. */
    FUNC0 (src_prop_desc_p->flags & (ECMA_PROP_IS_GET_DEFINED | ECMA_PROP_IS_SET_DEFINED));

    /* a. */
    if (src_prop_desc_p->get_p == NULL)
    {
      prop_desc.value = ECMA_VALUE_UNDEFINED;
    }
    else
    {
      prop_desc.value = FUNC5 (src_prop_desc_p->get_p);
    }

    completion = FUNC7 (obj_p,
                                                     FUNC1 (LIT_MAGIC_STRING_GET),
                                                     &prop_desc);
    FUNC0 (FUNC2 (completion));

    /* b. */
    if (src_prop_desc_p->set_p == NULL)
    {
      prop_desc.value = ECMA_VALUE_UNDEFINED;
    }
    else
    {
      prop_desc.value = FUNC5 (src_prop_desc_p->set_p);
    }

    completion = FUNC7 (obj_p,
                                                     FUNC1 (LIT_MAGIC_STRING_SET),
                                                     &prop_desc);
    FUNC0 (FUNC2 (completion));
  }

  prop_desc.value = FUNC3 (src_prop_desc_p->flags & ECMA_PROP_IS_ENUMERABLE);

  completion = FUNC7 (obj_p,
                                                   FUNC1 (LIT_MAGIC_STRING_ENUMERABLE),
                                                   &prop_desc);
  FUNC0 (FUNC2 (completion));

  prop_desc.value = FUNC3 (src_prop_desc_p->flags & ECMA_PROP_IS_CONFIGURABLE);

  completion = FUNC7 (obj_p,
                                                   FUNC1 (LIT_MAGIC_STRING_CONFIGURABLE),
                                                   &prop_desc);
  FUNC0 (FUNC2 (completion));

  return obj_p;
}