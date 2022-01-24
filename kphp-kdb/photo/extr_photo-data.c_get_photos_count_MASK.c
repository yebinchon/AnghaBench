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
struct TYPE_7__ {int /*<<< orphan*/  local_id; } ;
typedef  TYPE_1__ user ;
typedef  int /*<<< orphan*/  predicate ;

/* Variables and functions */
 int /*<<< orphan*/  NOAIO ; 
 int /*<<< orphan*/  PHOTO_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  index_mode ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  write_only ; 

int FUNC7 (int uid, int aid, char *condition) {
  FUNC0 (!index_mode && !write_only);

  user *u = FUNC1 (uid);
  if (u == NULL) {
    return -1;
  }

  FUNC2 (u, u->local_id, NOAIO);
  if (!FUNC6 (u)) {
    return -2;
  }

  predicate *pred = FUNC3 (condition, PHOTO_TYPE);

  if (pred == NULL) {
    return FUNC4 (u, aid);
  } else {
    return FUNC5 (u, aid, pred);
  }
}