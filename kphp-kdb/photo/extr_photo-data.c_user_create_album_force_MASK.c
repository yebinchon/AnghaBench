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
struct TYPE_6__ {int current_album_id; } ;
typedef  TYPE_1__ user ;

/* Variables and functions */
 scalar_t__ MAX_ALBUMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ write_only ; 

int FUNC5 (user *u, int aid) {
//  dbg ("user_create_album_force %d: album_id = %d\n", u->id, aid);
  if (!FUNC1 (aid)) {
    return -1;
  }

  if (aid > u->current_album_id) {
    return -1;
  }

  if (write_only) {
    return 1;
  }

  FUNC0 (FUNC4 (u));

  if (FUNC3 (u) >= MAX_ALBUMS) {
    return -1;
  }

  return FUNC2 (u, aid);
}