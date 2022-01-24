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
typedef  int /*<<< orphan*/  ecma_value_t ;
typedef  int /*<<< orphan*/  ecma_object_t ;
struct TYPE_5__ {int /*<<< orphan*/  spread_value; } ;
struct TYPE_6__ {TYPE_1__ u2; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {TYPE_2__ pseudo_array; } ;
struct TYPE_8__ {TYPE_3__ u; } ;
typedef  TYPE_4__ ecma_extended_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECMA_OBJECT_TYPE_PSEUDO_ARRAY ; 
 int /*<<< orphan*/  ECMA_PSEUDO_SPREAD_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

ecma_value_t
FUNC3 (ecma_value_t element) /**< value to spread */
{
  ecma_object_t *object_p = FUNC1 (NULL,
                                                sizeof (ecma_extended_object_t),
                                                ECMA_OBJECT_TYPE_PSEUDO_ARRAY);

  ecma_extended_object_t *ext_object_p = (ecma_extended_object_t *) object_p;
  ext_object_p->u.pseudo_array.type = ECMA_PSEUDO_SPREAD_OBJECT;
  ext_object_p->u.pseudo_array.u2.spread_value = FUNC0 (element);

  return FUNC2 (object_p);
}