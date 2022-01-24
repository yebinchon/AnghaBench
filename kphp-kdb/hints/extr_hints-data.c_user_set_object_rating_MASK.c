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
typedef  int rating ;

/* Variables and functions */
 int MAX_RATING_NUM ; 
 int /*<<< orphan*/  changes_count ; 
 int /*<<< orphan*/  FUNC0 (long long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char,int,int) ; 
 scalar_t__ no_changes ; 
 int now ; 
 scalar_t__ write_only ; 

int FUNC5 (user *u, unsigned char object_type, long long object_id, rating val, int num) {
  if (!FUNC1 (val) || !FUNC3 (object_type) || !FUNC0 (object_id) || !FUNC2 (num)) {
    return 0;
  }
  if (write_only || no_changes) {
    return 1;
  }

  if (1333411200 <= now && now <= 1334016000 && val > 1e-3 && object_type == 21 && num == 0) {
    return 1;
  }

  FUNC4 (&u->chg_list_st, &u->chg_list_en, + (object_type + 256 * num + 256 * MAX_RATING_NUM), -(int)(object_id), val);
  changes_count++;

  return 1;
}