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
struct lev_photo_create_album {int user_id; } ;

/* Variables and functions */
 scalar_t__ LEV_PHOTO_CREATE_ALBUM ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct lev_photo_create_album* FUNC1 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  create_album ; 
 int mode ; 

int FUNC2 (int uid) {
  int size = sizeof (struct lev_photo_create_album);
  struct lev_photo_create_album *E =
    FUNC1 (LEV_PHOTO_CREATE_ALBUM + (mode << 16), size, uid);

  E->user_id = uid;

  return FUNC0 (create_album, 1);
}