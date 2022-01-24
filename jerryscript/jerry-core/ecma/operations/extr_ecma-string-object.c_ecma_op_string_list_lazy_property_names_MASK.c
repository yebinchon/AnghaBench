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
typedef  int /*<<< orphan*/  ecma_string_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;
typedef  scalar_t__ ecma_length_t ;
struct TYPE_5__ {int /*<<< orphan*/  value; } ;
struct TYPE_6__ {scalar_t__ class_id; TYPE_1__ u; } ;
struct TYPE_7__ {TYPE_2__ class_prop; } ;
struct TYPE_8__ {TYPE_3__ u; } ;
typedef  TYPE_4__ ecma_extended_object_t ;
typedef  int /*<<< orphan*/  ecma_collection_t ;

/* Variables and functions */
 scalar_t__ ECMA_OBJECT_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LIT_MAGIC_STRING_LENGTH ; 
 scalar_t__ LIT_MAGIC_STRING_STRING_UL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8 (ecma_object_t *obj_p, /**< a String object */
                                         bool separate_enumerable, /**< true -  list enumerable properties
                                                                    *           into main collection,
                                                                    *           and non-enumerable to collection of
                                                                    *           'skipped non-enumerable' properties,
                                                                    *   false - list all properties into main
                                                                    *           collection.
                                                                    */
                                         ecma_collection_t *main_collection_p, /**< 'main' collection */
                                         ecma_collection_t *non_enum_collection_p) /**< skipped
                                                                                    *   'non-enumerable'
                                                                                    *   collection */
{
  FUNC0 (FUNC2 (obj_p) == ECMA_OBJECT_TYPE_CLASS);

  ecma_collection_t *for_enumerable_p = main_collection_p;

  ecma_collection_t *for_non_enumerable_p = separate_enumerable ? non_enum_collection_p : main_collection_p;

  ecma_extended_object_t *ext_object_p = (ecma_extended_object_t *) obj_p;
  FUNC0 (ext_object_p->u.class_prop.class_id == LIT_MAGIC_STRING_STRING_UL);

  ecma_string_t *prim_value_str_p = FUNC3 (ext_object_p->u.class_prop.u.value);

  ecma_length_t length = FUNC7 (prim_value_str_p);

  for (ecma_length_t i = 0; i < length; i++)
  {
    ecma_string_t *name_p = FUNC6 (i);

    /* the properties are enumerable (ECMA-262 v5, 15.5.5.2.9) */
    FUNC1 (for_enumerable_p, FUNC5 (name_p));
  }

  FUNC1 (for_non_enumerable_p, FUNC4 (LIT_MAGIC_STRING_LENGTH));
}