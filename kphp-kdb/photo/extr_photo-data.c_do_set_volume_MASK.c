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
struct lev_photo_set_volume {int volume_id; int server_id; } ;

/* Variables and functions */
 scalar_t__ LEV_PHOTO_SET_VOLUME ; 
 struct lev_photo_set_volume* FUNC0 (scalar_t__,int,int) ; 
 int mode ; 
 int FUNC1 (struct lev_photo_set_volume*) ; 

int FUNC2 (int vid, int sid) {
  int size = sizeof (struct lev_photo_set_volume);
  struct lev_photo_set_volume *E =
    FUNC0 (LEV_PHOTO_SET_VOLUME + (mode << 16), size, vid);

  E->volume_id = vid;
  E->server_id = sid;

  return FUNC1 (E);
}