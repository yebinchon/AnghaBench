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
struct lev_photo_rotate_photo {int user_id; int photo_id; } ;

/* Variables and functions */
 scalar_t__ LEV_PHOTO_ROTATE_PHOTO ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct lev_photo_rotate_photo* FUNC1 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int mode ; 
 int /*<<< orphan*/  rotate_photo ; 

int FUNC3 (int uid, int pid, int dir) {
  if (dir == -1) {
    dir = 3;
  }

  if ((dir != 1 && dir != 3) || !FUNC2 (pid)) {
    return 0;
  }

  int size = sizeof (struct lev_photo_rotate_photo);
  struct lev_photo_rotate_photo *E =
    FUNC1 (LEV_PHOTO_ROTATE_PHOTO + (mode << 16) + dir, size, uid);

  E->user_id = uid;
  E->photo_id = pid;

  return FUNC0 (rotate_photo, 1);
}