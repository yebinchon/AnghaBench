#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct lev_generic {int /*<<< orphan*/  a; } ;
struct lev_del_entry {int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  object_id_t ;
struct TYPE_8__ {TYPE_1__* o_tree; } ;
typedef  TYPE_2__ list_t ;
typedef  int /*<<< orphan*/  list_id_t ;
struct TYPE_9__ {scalar_t__ N; int /*<<< orphan*/  root; } ;
struct TYPE_7__ {int delta; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LEV_LI_DEL_ENTRY ; 
 int /*<<< orphan*/  MAXINT ; 
 int M_tot_entries ; 
 TYPE_4__ OTree ; 
 int /*<<< orphan*/  array_delete_sublist ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lev_generic*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int f_and_c ; 
 int f_cnt ; 
 int f_xor_c ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in_array ; 
 int /*<<< orphan*/  in_tree ; 
 scalar_t__ lev_list_object_bytes ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 int metafile_mode ; 
 int /*<<< orphan*/  FUNC11 (int,struct lev_generic*) ; 
 int postponed_replay ; 
 int /*<<< orphan*/ * temp_object_buff ; 
 int temp_object_buff_size ; 
 int /*<<< orphan*/ * temp_object_list ; 
 int temp_object_list_size ; 
 int /*<<< orphan*/  tree_delete_sublist ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (struct lev_del_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct lev_del_entry*,scalar_t__) ; 
 struct lev_del_entry* FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,long long) ; 
 int /*<<< orphan*/ * FUNC18 (long long) ; 

__attribute__((used)) static int FUNC19 (list_id_t list_id, int op, struct lev_generic *E) {
  FUNC14 (4, "delete_sublist\n");
  if (metafile_mode) {
    //int metafile_number = find_metafile (list_id);
    //int metafile_number = get_list_m (list_id)->metafile_number;
    int metafile_number = FUNC7 (list_id);
    if (metafile_number >= 0) {
      if (!FUNC2 (metafile_number, -1)) {
        FUNC11 (metafile_number, (struct lev_generic *)E);
        return 1;
      } else if (metafile_mode & 2) {
        FUNC11 (metafile_number, (struct lev_generic *)E);
      } else {
        if (!(metafile_mode & 1)) {
          FUNC9 (list_id);
        }
      }
    }
  }

  list_t *L = FUNC6 (list_id);
  int i, s = 0, xor_c = op & 0xff, and_c = (op >> 8) & 0xff;

  if (!L) {
    return FUNC3 (list_id) < 0 ? -1 : 0;
  }

  FUNC12 (L);

  for (i = 0; i < 8; i++) {
    if (!((i ^ xor_c) & 7 & and_c)) {
      s += FUNC10 (i);
    }
  }

  if (!s) {
    return 0;
  }

  f_xor_c = xor_c;
  f_and_c = and_c;
  f_cnt = 0;

  in_array = array_delete_sublist;
  in_tree = tree_delete_sublist;

  long long msize = 0;
  if (metafile_mode & 1) {
    temp_object_list_size = 0;
    if (M_tot_entries + L->o_tree->delta <= temp_object_buff_size) {
      temp_object_list = temp_object_buff;
    } else {
      msize = sizeof (object_id_t) * (M_tot_entries + L->o_tree->delta);
      temp_object_list = FUNC18 (msize);
    }
  }
  FUNC1 (!FUNC8 (OTree.root, &OTree, 0, OTree.N - 1, MAXINT));
  if (metafile_mode & 1) {
    struct lev_del_entry *E = FUNC16 (sizeof (struct lev_del_entry) + lev_list_object_bytes);
    E->type = LEV_LI_DEL_ENTRY;
    int t = postponed_replay;
    postponed_replay = 1;
    for (i = 0; i < temp_object_list_size; i++) {
      ((struct lev_generic *)E)->a = FUNC0(list_id);
      FUNC13 (E, list_id, temp_object_list[i]);
      FUNC1 (FUNC4 (list_id, temp_object_list[i], 0, (struct lev_generic *)E) >= 0); 
    }
    postponed_replay = t;
    FUNC15 (E, sizeof (struct lev_del_entry) + lev_list_object_bytes);
    if (temp_object_list != temp_object_buff) {
      FUNC17 (temp_object_list, msize);
    }
  }

  if (M_tot_entries + L->o_tree->delta == 0 && !(metafile_mode & 2)) {
    FUNC1 (FUNC5 (list_id, 0)); //free unused structures
  }

  return f_cnt;
}