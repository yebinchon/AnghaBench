#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int current_photo_id; } ;
typedef  TYPE_1__ user ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int) ; 
 int FUNC7 (TYPE_1__*) ; 
 scalar_t__ write_only ; 

int FUNC8 (user *u, int aid, int cnt) {
//  dbg ("user_create_photo %d: album_id = %d, cnt = %d\n", u->id, aid, cnt);
  if (!FUNC2 (aid)) {
    return 0;
  }

  if (write_only) {
    int res = u->current_photo_id;

    u->current_photo_id += cnt;

//    dbg ("write only\n");
    return res;
  }

  FUNC1 (FUNC7 (u));

  int res = u->current_photo_id;

  if (aid < 0) {
    FUNC4 (u, aid);
  }

  data *d = FUNC6 (u, aid);
  if (d == NULL || FUNC3 (d) + cnt > FUNC0 (aid)) {
    u->current_photo_id += cnt;
//    dbg ("user_create_photo %d: failed\n", u->id);
    return 0;
  }

  int ret = FUNC5 (u, d, aid, cnt, res);
  FUNC1 (ret == cnt);

  u->current_photo_id += cnt;
//  dbg ("user_create_photo %d: done (photo_id = %d)", u->id, res);
  return res;
}