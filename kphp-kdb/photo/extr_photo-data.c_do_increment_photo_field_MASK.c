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
 int /*<<< orphan*/  LEV_PHOTO_INCREM_PHOTO_FIELD ; 
 scalar_t__ PHOTO_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,char*) ; 
 scalar_t__ types ; 

int FUNC3 (int uid, int pid, char *field_name, int cnt) {
  if (field_name == NULL) {
    return 0;
  }

  if (!FUNC0 (pid)) {
    return 0;
  }

  int field_id = FUNC2 (types + PHOTO_TYPE, field_name);
  if (field_id < 0) {
    return 0;
  }

  return FUNC1 (uid, pid, field_id, cnt, LEV_PHOTO_INCREM_PHOTO_FIELD);
}