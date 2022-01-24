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
struct lev_photo_change_album_order {int user_id; int album_id; int album_id_near; } ;

/* Variables and functions */
 scalar_t__ LEV_PHOTO_CHANGE_ALBUM_ORDER ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct lev_photo_change_album_order* FUNC1 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  change_album_order ; 
 int mode ; 

int FUNC2 (int uid, int aid, int aid_near, int is_next) {
  if (aid == 0 || aid_near == aid) {
    return 0;
  }

  int size = sizeof (struct lev_photo_change_album_order);
  struct lev_photo_change_album_order *E =
    FUNC1 (LEV_PHOTO_CHANGE_ALBUM_ORDER + (mode << 16) + is_next, size, uid);

  E->user_id = uid;
  E->album_id = aid;
  E->album_id_near = aid_near;

  return FUNC0 (change_album_order, 1);
}