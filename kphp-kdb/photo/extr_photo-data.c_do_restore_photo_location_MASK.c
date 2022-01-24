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
struct lev_photo_restore_photo_location {int user_id; int photo_id; } ;

/* Variables and functions */
 scalar_t__ LEV_PHOTO_RESTORE_PHOTO_LOCATION ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct lev_photo_restore_photo_location* FUNC1 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int mode ; 
 int /*<<< orphan*/  restore_photo_location ; 

int FUNC3 (int uid, int pid) {
  if (!FUNC2 (pid)) {
    return 0;
  }

  int size = sizeof (struct lev_photo_restore_photo_location);
  struct lev_photo_restore_photo_location *E =
    FUNC1 (LEV_PHOTO_RESTORE_PHOTO_LOCATION + (mode << 16), size, uid);

  E->user_id = uid;
  E->photo_id = pid;

  return FUNC0 (restore_photo_location, 1);
}