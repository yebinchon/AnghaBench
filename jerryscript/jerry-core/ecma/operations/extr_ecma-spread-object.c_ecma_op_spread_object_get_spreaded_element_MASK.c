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
struct TYPE_6__ {TYPE_1__ u2; } ;
struct TYPE_7__ {TYPE_2__ pseudo_array; } ;
struct TYPE_8__ {TYPE_3__ u; } ;
typedef  TYPE_4__ ecma_extended_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

ecma_value_t
FUNC4 (ecma_object_t *object_p) /**< spread object */
{
  FUNC0 (FUNC3 (FUNC2 (object_p)));

  ecma_extended_object_t *ext_object_p = (ecma_extended_object_t *) object_p;
  return FUNC1 (ext_object_p->u.pseudo_array.u2.spread_value);
}