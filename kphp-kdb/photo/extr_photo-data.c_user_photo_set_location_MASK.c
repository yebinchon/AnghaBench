#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_3__ {int v_raw_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  photo_type__location ; 
 int /*<<< orphan*/  photo_type__original_location ; 
 int /*<<< orphan*/  raw ; 
 TYPE_1__* tmp_field_changes ; 
 size_t tmp_field_changes_n ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,TYPE_1__*,size_t,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  write_only ; 

int FUNC6 (user *u, int pid, int original, char *loc, int len) {
//  dbg ("user_photo_set_location %d: photo_id = %d, len = %d\n", u->id, pid, len);

  FUNC1 (FUNC5 (u) && !write_only);

  int aid = FUNC3 (u, pid);
  FUNC1 (aid != 0);

  data *d = FUNC4 (u, aid);
  if (d == NULL) {
    return 0;
  }

  tmp_field_changes_n = 0;
  tmp_field_changes[tmp_field_changes_n].v_raw_len = len;
  FUNC0 (original ? photo_type__original_location : photo_type__location, raw, loc);

  FUNC2 (d, pid, tmp_field_changes, tmp_field_changes_n, 1);

  return 1;
}