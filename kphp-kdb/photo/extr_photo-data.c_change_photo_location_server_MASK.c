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
struct lev_photo_change_photo_location_server {int type; int /*<<< orphan*/  server_id; int /*<<< orphan*/  photo_id; } ;

/* Variables and functions */
 int LEV_PHOTO_CHANGE_PHOTO_LOCATION_SERVER ; 
 int mode ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

int FUNC1 (user *u, struct lev_photo_change_photo_location_server *E, int size) {
  int original_server_num = E->type - (mode << 16) - LEV_PHOTO_CHANGE_PHOTO_LOCATION_SERVER;
  return FUNC0 (u, E->photo_id, original_server_num >> 1, original_server_num & 1, E->server_id);
}