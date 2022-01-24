#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  field_desc ;
struct TYPE_4__ {int /*<<< orphan*/ * obj; int /*<<< orphan*/ * dyn; } ;
typedef  TYPE_1__ actual_object ;
struct TYPE_5__ {int /*<<< orphan*/ * fields; } ;

/* Variables and functions */
 int* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int INT_MIN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* types ; 

int FUNC2 (actual_object *o, int type, int field_num) {
  if (field_num != -1) {
    field_desc *f = &types[type].fields[field_num];

    if (o->dyn != NULL && FUNC1 (o->dyn, field_num)) {
      return *FUNC0 (o->dyn, f);
    } else if (o->obj != NULL && FUNC1 (o->obj, field_num)) {
      return *FUNC0 (o->obj, f);
    }
  }
  return INT_MIN;
}