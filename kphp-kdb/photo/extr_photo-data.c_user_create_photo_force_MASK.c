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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ write_only ; 

int FUNC9 (user *u, int aid, int cnt, int pid) {
//  dbg ("user_create_photo_force %d: album_id = %d, cnt = %d, photo_id = %d\n", u->id, aid, cnt, pid);

  if (!FUNC3 (pid) || !FUNC2 (aid) || pid + cnt > u->current_photo_id) {
    return -1;
  }

  if (write_only) {
    return 1;
  }

  FUNC1 (FUNC8 (u));

  if (aid < 0) {
    FUNC5 (u, aid);
  }

  data *d = FUNC7 (u, aid);
  if (d == NULL || FUNC4 (d) + cnt > FUNC0 (aid)) {
    return -1;
  }

  return FUNC6 (u, d, aid, cnt, pid);
}