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
struct tl_get_photo {int /*<<< orphan*/  mask; int /*<<< orphan*/  force; int /*<<< orphan*/  photo_id; int /*<<< orphan*/  user_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;
typedef  int /*<<< orphan*/  actual_object ;

/* Variables and functions */
 int /*<<< orphan*/  NOAIO ; 
 int /*<<< orphan*/  PHOTO_TYPE ; 
 int /*<<< orphan*/  TL_MAYBE_FALSE ; 
 int /*<<< orphan*/  TL_MAYBE_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  index_mode ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  write_only ; 

int FUNC9 (struct tl_act_extra *extra) {
  struct tl_get_photo *e = (struct tl_get_photo *)extra->extra;

  FUNC0 (FUNC2 (e->user_id) && FUNC1 (e->photo_id));
  FUNC0 (!index_mode && !write_only);

  user *u = FUNC3 (e->user_id);
  if (u == NULL) {
    FUNC6 (TL_MAYBE_FALSE);
    return 0;
  }

  FUNC5 (u, u->local_id, NOAIO);
  if (!FUNC8 (u)) {
    return -2;
  }

  actual_object o;
  if (FUNC7 (u, e->photo_id, e->force, &o) < 0) {
    FUNC6 (TL_MAYBE_FALSE);
    return 0;
  }

  FUNC6 (TL_MAYBE_TRUE);
  FUNC4 (&o, PHOTO_TYPE, e->mask);
  return 0;
}