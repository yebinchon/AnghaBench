#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  album_by_photo; } ;
typedef  TYPE_1__ user ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 

int FUNC5 (user *u, int pid) {
//  dbg ("user_get_aid_by_pid %d: photo_id = %d\n", u->id, pid);

  FUNC0 (FUNC4 (u));
  int res = FUNC2 (&u->album_by_photo, pid, 0);

//  dbg ("photo_id = %d, album_id = %d\n", pid, res);
//  can be deleted, I hope
  if (res != 0) {
    data *albums = FUNC3 (u);
    FUNC0 (FUNC1 (albums, res) != -1);
  }

  return res;
}