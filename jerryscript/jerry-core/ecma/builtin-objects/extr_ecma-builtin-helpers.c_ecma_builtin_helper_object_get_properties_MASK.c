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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ecma_value_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;
struct TYPE_5__ {int item_count; int /*<<< orphan*/ * buffer_p; } ;
typedef  TYPE_1__ ecma_collection_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

ecma_value_t
FUNC10 (ecma_object_t *obj_p, /**< object */
                                           uint32_t opts) /**< any combination of ecma_list_properties_options_t */
{
  FUNC1 (obj_p != NULL);

  ecma_value_t new_array = FUNC6 (NULL, 0, false);
  FUNC1 (!FUNC0 (new_array));
  ecma_object_t *new_array_p = FUNC5 (new_array);

  ecma_collection_t *props_p = FUNC7 (obj_p, opts);

  if (props_p->item_count == 0)
  {
    FUNC2 (props_p);
    return new_array;
  }

  FUNC1 (FUNC8 (new_array_p));

  ecma_value_t *buffer_p = props_p->buffer_p;
  ecma_value_t *values_p = FUNC4 (new_array_p, props_p->item_count);

  FUNC9 (values_p, buffer_p, props_p->item_count * sizeof (ecma_value_t));

  FUNC3 (props_p);

  return new_array;
}