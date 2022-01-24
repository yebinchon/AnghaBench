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
 scalar_t__ ALBUM_TYPE ; 
 int /*<<< orphan*/  LEV_PHOTO_INCREM_ALBUM_FIELD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,char*) ; 
 scalar_t__ types ; 

int FUNC3 (int uid, int aid, char *field_name, int cnt) {
  if (field_name == NULL) {
    return 0;
  }

  if (!FUNC0 (aid)) {
    return 0;
  }

  int field_id = FUNC2 (types + ALBUM_TYPE, field_name);
  if (field_id < 0) {
    return 0;
  }

  return FUNC1 (uid, aid, field_id, cnt, LEV_PHOTO_INCREM_ALBUM_FIELD);
}