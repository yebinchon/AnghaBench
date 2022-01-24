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
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ write_only ; 

int FUNC4 (user *u, int aid, int aid_near, int is_next) {
//  dbg ("user_change_album_order %d: album_id = %d, album_id_near = %d, is_next = %d\n", u->id, aid, aid_near, is_next);

  if (write_only) {
    return 1;
  }

  FUNC0 (FUNC3 (u));

  data *d = FUNC2 (u);
  return FUNC1 (d, aid, aid_near, is_next) > -1;
}