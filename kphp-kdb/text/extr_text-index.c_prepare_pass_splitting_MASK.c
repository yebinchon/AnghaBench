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

/* Variables and functions */
 int MAX_PASSES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int max_uid ; 
 int* pass_min_uid ; 
 int /*<<< orphan*/  pass_threshold ; 
 int passes ; 
 scalar_t__ temp_binlog_directory ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 

int FUNC3 (void) {
  int i, uid = 0;
  FUNC0 (passes > 0 && passes <= MAX_PASSES);
  for (i = 0; i < passes; i++) {
    pass_min_uid[i] = uid;
    uid = FUNC1 (uid, pass_threshold);
  }
  pass_min_uid[i] = uid;
  FUNC0 (uid == max_uid + 1);
  if (temp_binlog_directory) {
    if (i <= 2) {
      FUNC2 (1, "only %d passes needed, ignoring temporary directory\n", i);
      temp_binlog_directory = 0;
    }
  }
  return i;
}