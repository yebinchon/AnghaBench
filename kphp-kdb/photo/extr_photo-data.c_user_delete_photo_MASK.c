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
struct TYPE_6__ {int /*<<< orphan*/  album_by_photo; } ;
typedef  TYPE_1__ user ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  HIDE_ITERS ; 
 scalar_t__ MAX_HIDE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int) ; 
 int FUNC8 (TYPE_1__*) ; 
 scalar_t__ write_only ; 

int FUNC9 (user *u, int pid) {
  if (write_only) {
    return 1;
  }

  FUNC0 (FUNC8 (u));

  int aid = FUNC6 (u, pid);
  if (aid == 0) {
    return 0;
  }
  data *d = FUNC7 (u, aid);
  if (d == NULL) {
    return 0;
  }
  if (FUNC2 (d, pid) != 0) {
    return 0;
  }

  if (FUNC4(d) >= MAX_HIDE) {
    FUNC0 (FUNC1 (d, pid) > -1);
    FUNC5 (&u->album_by_photo, pid, 0);
  } else {
    FUNC0 (FUNC3 (d, pid, HIDE_ITERS) > -1);
  }

  return 1;
}