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
 int /*<<< orphan*/  LEV_PHOTO_CHANGE_PHOTO ; 
 int MAX_EVENT_SIZE ; 
 int /*<<< orphan*/  PHOTO_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ field_changes_n ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (char*) ; 

int FUNC4 (int uid, int pid, char *changes) {
  if (changes == NULL) {
    return 0;
  }

  int l = FUNC3 (changes);
  if (!FUNC0 (pid) || l == 0 || l >= MAX_EVENT_SIZE) {
    return 0;
  }

  if (FUNC2 (PHOTO_TYPE, changes) < 0) {
    return 0;
  }

  if (field_changes_n == 0) {
    return 1;
  }

  return FUNC1 (uid, pid, LEV_PHOTO_CHANGE_PHOTO);
}