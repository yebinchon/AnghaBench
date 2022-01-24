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
struct TYPE_3__ {int /*<<< orphan*/  chg_list_en; int /*<<< orphan*/  chg_list_st; } ;
typedef  TYPE_1__ user ;

/* Variables and functions */
 int /*<<< orphan*/  changes_count ; 
 int /*<<< orphan*/  FUNC0 (long long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ no_changes ; 
 scalar_t__ write_only ; 

int FUNC3 (user *u, int type, long long object_id, int force) {
  if (!FUNC1 (type) || !FUNC0 (object_id)) {
    return 0;
  }
  if (!force) {
    if (write_only || no_changes) {
      return 1;
    }
  }


  FUNC2 (&u->chg_list_st, &u->chg_list_en, -type, (int)object_id, NULL);
  changes_count++;

  return 1;
}