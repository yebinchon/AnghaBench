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
typedef  int /*<<< orphan*/  event ;
struct TYPE_4__ {int /*<<< orphan*/ * dyn; int /*<<< orphan*/ * obj; } ;
typedef  TYPE_1__ actual_object ;
struct TYPE_5__ {int /*<<< orphan*/ * fields; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t PHOTO_TYPE ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int photo_type__location ; 
 int photo_type__original_location ; 
 TYPE_2__* types ; 

char *FUNC4 (actual_object *o, int original_location, int *len) {
  event *e = o->obj, *e2 = o->dyn;
  int field_num = original_location ? photo_type__original_location : photo_type__location;

  if (field_num != -1) {
    field_desc *f = &types[PHOTO_TYPE].fields[field_num];

    char *x = NULL;
    if (e2 != NULL && FUNC3 (e2, field_num)) {
      x = FUNC0 (e2, f);
    } else if (e != NULL && FUNC3 (e, field_num)) {
      x = FUNC0 (e, f);
    }
    if (x != NULL) {
      *len = FUNC2 (x);
      return FUNC1 (x);
    }
  }
  *len = 0;
  return "";
}