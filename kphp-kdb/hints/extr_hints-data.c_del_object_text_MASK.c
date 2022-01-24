#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lev_hints_del_object_text {int type; scalar_t__ object_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  changes_count ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  global_changes_en ; 
 int /*<<< orphan*/  global_changes_st ; 
 scalar_t__ no_changes ; 
 int /*<<< orphan*/ ** stat_global ; 
 scalar_t__ write_only ; 

int FUNC2 (struct lev_hints_del_object_text *E) {
  if ((E->type & 0xff) == 0 || !FUNC0 (E->object_id)) {
    return 0;
  }

  if (write_only || no_changes) {
    return 1;
  }

  stat_global[E->type & 0xff][0]++;

  FUNC1 (&global_changes_st, &global_changes_en, -(E->type & 0xff), (int)E->object_id, NULL);
  changes_count++;

  return 1;
}