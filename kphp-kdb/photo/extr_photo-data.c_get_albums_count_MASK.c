#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  local_id; } ;
typedef  TYPE_1__ user ;
typedef  int /*<<< orphan*/  predicate ;

/* Variables and functions */
 int /*<<< orphan*/  ALBUM_TYPE ; 
 int /*<<< orphan*/  MAX_ALBUMS ; 
 int /*<<< orphan*/  NOAIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  index_mode ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * result_obj ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  write_only ; 

int FUNC7 (int uid, char *condition) {
  FUNC0 (!index_mode && !write_only);

  user *u = FUNC1 (uid);
  if (u == NULL) {
    return -1;
  }

  FUNC3 (u, u->local_id, NOAIO);
  if (!FUNC6 (u)) {
    return -2;
  }

  predicate *pred = FUNC4 (condition, ALBUM_TYPE);

  int res = FUNC5 (u, 0, MAX_ALBUMS, pred);

  int i, real_res = 0;
  for (i = 0; i < res; i++) {
    int aid = FUNC2 (&result_obj[i]);

    if (aid > 0) {
      real_res++;
    }
  }

  return real_res;
}