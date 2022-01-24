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
typedef  int /*<<< orphan*/  user ;
struct lev_photo_create_photo_force {int type; int /*<<< orphan*/  photo_id; int /*<<< orphan*/  album_id; } ;

/* Variables and functions */
 int LEV_PHOTO_CREATE_PHOTO_FORCE ; 
 int MAX_PHOTOS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int mode ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC2 (user *u, struct lev_photo_create_photo_force *E, int size) {
  int cnt = E->type - (mode << 16) - LEV_PHOTO_CREATE_PHOTO_FORCE;
  FUNC0 (cnt > 0 && cnt <= MAX_PHOTOS);

  return FUNC1 (u, E->album_id, cnt, E->photo_id) == cnt;
}