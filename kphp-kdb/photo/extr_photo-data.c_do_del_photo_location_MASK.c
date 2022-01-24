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
struct lev_photo_del_photo_location {int user_id; int photo_id; } ;

/* Variables and functions */
 scalar_t__ LEV_PHOTO_DEL_PHOTO_LOCATION ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct lev_photo_del_photo_location* FUNC1 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  del_photo_location ; 
 int mode ; 

int FUNC2 (int uid, int pid, int original) {
  if (original < 0 || original > 1) {
    return 0;
  }

  int size = sizeof (struct lev_photo_del_photo_location);
  struct lev_photo_del_photo_location *E = FUNC1 (LEV_PHOTO_DEL_PHOTO_LOCATION + (mode << 16) + (original << 10), size, uid);

  E->user_id = uid;
  E->photo_id = pid;

  return FUNC0 (del_photo_location, 1);
}