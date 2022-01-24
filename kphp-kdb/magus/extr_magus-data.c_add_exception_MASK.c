#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  new_exceptions; } ;
typedef  TYPE_1__ user ;
struct lev_magus_add_exception {int type; int /*<<< orphan*/  fid; int /*<<< orphan*/  user_id; } ;
struct TYPE_5__ {int fid_names_cnt; int /*<<< orphan*/  fid_id; int /*<<< orphan*/  has_names; } ;

/* Variables and functions */
 int LEV_MAGUS_ADD_EXCEPTION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ index_mode ; 
 int* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* sim_header ; 
 scalar_t__* types ; 

int FUNC5 (struct lev_magus_add_exception *E) {
  user *u = FUNC1 (E->user_id);

  if (u == NULL) {
    return 0;
  }

  int type = E->type - LEV_MAGUS_ADD_EXCEPTION;
  FUNC0 (0 < type && type < 256);

  FUNC0 (types[type] && !sim_header[type].has_names);

  int *fid = FUNC4 (&sim_header[type].fid_id, E->fid);
  if (fid == NULL && index_mode) {
    int *cnt = &sim_header[type].fid_names_cnt;
    fid = FUNC3 (&sim_header[type].fid_id, E->fid);
    *fid = *cnt;
    *cnt = (*cnt) + 1;
  }
  if (fid == NULL) {
    return 0;
  }
  FUNC0 (0 <= *fid && *fid < (1 << 23));

  FUNC2 (&u->new_exceptions, (type << 23) + *fid);

  return 1;
}