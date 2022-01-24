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
typedef  scalar_t__ mode_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  work_dir ; 

void FUNC2 (int change_extract_dir_perms_during_replay_log, mode_t old_mode) {
  if (change_extract_dir_perms_during_replay_log) {
    if (FUNC0 (work_dir, old_mode) < 0) {
      FUNC1 ("chmod 0%o \"%s\" fail. %m\n", (int) old_mode, work_dir);
    }
  }
}