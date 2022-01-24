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
struct lev_magus_add_exception_string {int type; int /*<<< orphan*/  text; int /*<<< orphan*/  user_id; } ;
struct TYPE_5__ {int fid_names_cnt; int objs_limit; int /*<<< orphan*/ * fid_names_begins; int /*<<< orphan*/  fid_id_str; scalar_t__ has_names; } ;

/* Variables and functions */
 int LEV_MAGUS_ADD_EXCEPTION_STRING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int index_mode ; 
 int* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* sim_header ; 
 scalar_t__* types ; 

int FUNC6 (struct lev_magus_add_exception_string *E) {
  user *u = FUNC1 (E->user_id);

  if (u == NULL) {
    return 0;
  }

  int type = E->type - LEV_MAGUS_ADD_EXCEPTION_STRING;
  FUNC0 (0 < type && type < 256);

  FUNC0 (types[type] && sim_header[type].has_names);

  int *fid = FUNC5 (&sim_header[type].fid_id_str, E->text);
  if (fid == NULL && index_mode) {
    int *cnt = &sim_header[type].fid_names_cnt;
    FUNC0 (*cnt < sim_header[type].objs_limit * 2 + 1024000 * index_mode + 1);
    sim_header[type].fid_names_begins[*cnt] = FUNC2 (E->text);
    fid = FUNC4 (&sim_header[type].fid_id_str, sim_header[type].fid_names_begins[*cnt]);
    *fid = *cnt;
    *cnt = (*cnt) + 1;
  }
  if (fid == NULL) {
    return 0;
  }

  FUNC0 (0 <= *fid && *fid < (1 << 23));

  FUNC3 (&u->new_exceptions, (type << 23) + *fid);

  return 1;
}