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
struct lev_photo_change_photo_location_server {int dummy; } ;
struct lev_photo_add_photo_location {int user_id; int photo_id; int server_id; } ;

/* Variables and functions */
 scalar_t__ LEV_PHOTO_CHANGE_PHOTO_LOCATION_SERVER ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct lev_photo_add_photo_location* FUNC1 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  change_photo_location_server ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int mode ; 

int FUNC3 (int uid, int pid, int original, int server_num, int sid) {
  if (original < 0 || original > 1 || server_num < 0 || server_num > 1) {
    FUNC2 ("change_photo_location_server failed\n");
    return 0;
  }

  int size = sizeof (struct lev_photo_change_photo_location_server);

  struct lev_photo_add_photo_location *E =
    FUNC1 (LEV_PHOTO_CHANGE_PHOTO_LOCATION_SERVER + (mode << 16) + (original << 1) + server_num, size, uid);

  E->user_id = uid;
  E->photo_id = pid;
  E->server_id = sid;

  return FUNC0 (change_photo_location_server, 1);
}