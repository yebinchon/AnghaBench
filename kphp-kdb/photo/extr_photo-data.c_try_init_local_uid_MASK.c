#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int user_cnt; TYPE_1__* user_index; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHOTO_SCHEMA_V1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__ header ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_schema ; 
 int log_split_max ; 
 int log_split_min ; 
 int log_split_mod ; 

void FUNC3 (void) {
  static int was = 0;
  static int old_log_split_min, old_log_split_max, old_log_split_mod;

  if (was) {
//    fprintf (stderr, "%d vs %d | %d vs %d | %d vs %d\n", old_log_split_min, log_split_min, old_log_split_max, log_split_max, old_log_split_mod, log_split_mod);
    FUNC0 (old_log_split_min == log_split_min && old_log_split_max == log_split_max && old_log_split_mod == log_split_mod);
    return;
  } else {
    was = 1;
    old_log_split_min = log_split_min;
    old_log_split_max = log_split_max;
    old_log_split_mod = log_split_mod;
  }

  //TODO why this is here?
  int i;
  for (i = 1; i <= header.user_cnt; i++) {
    FUNC0 (FUNC1 (header.user_index[i].id) != NULL);
  }

  log_schema = PHOTO_SCHEMA_V1;
  FUNC2 (log_schema);
}