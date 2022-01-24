#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int id; int /*<<< orphan*/  album_by_photo; } ;
typedef  TYPE_1__ user ;
struct TYPE_14__ {int /*<<< orphan*/ * e; int /*<<< orphan*/  tp; } ;
typedef  TYPE_2__ my_change ;
struct TYPE_15__ {scalar_t__ v_fid; int v_int; } ;
typedef  TYPE_3__ field ;
typedef  int /*<<< orphan*/  event ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  change ;
struct TYPE_16__ {int /*<<< orphan*/ * obj; int /*<<< orphan*/  dyn; } ;
typedef  TYPE_4__ actual_object ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  PHOTO_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ch_event ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,TYPE_4__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ photo_type_album_id ; 
 scalar_t__ photo_type_id ; 
 scalar_t__ photo_type_owner_id ; 
 int FUNC14 (int /*<<< orphan*/ *,int,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int) ; 
 int FUNC16 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC17 (TYPE_1__*,int) ; 
 int FUNC18 (TYPE_1__*) ; 
 scalar_t__ write_only ; 

int FUNC19 (user *u, int pid, field *field_changes, int field_changes_n) {
  FUNC10 ("user_change_photo %d: photo_id = %d, field_changes_n = %d\n", u->id, pid, field_changes_n);

  if (write_only) {
    return 1;
  }

  FUNC1 (FUNC18 (u));

  int aid = FUNC16 (u, pid);
  if (aid == 0) {
    return 0;
  }
  data *d = FUNC17 (u, aid);
  if (d == NULL) {
    return 0;
  }

  if (FUNC8 (d, pid) != 0) {
    return 0;
  }

  int i;
  for (i = 0; i < field_changes_n; i++) {
    FUNC1 (field_changes[i].v_fid != photo_type_id && field_changes[i].v_fid != photo_type_owner_id);

    // change album
    if (field_changes[i].v_fid == photo_type_album_id) {
      int naid = field_changes[i].v_int;
      if (aid == naid) {
        continue;
      }

      FUNC10 ("Move (photo_id = %d) to (album_id = %d) (field_changes_n = %d)\n", pid, field_changes[i].v_int, field_changes_n);

      if (!FUNC2 (naid)) {
        return 0;
      }

      if (naid < 0) {
        FUNC15 (u, naid);
      }

      data *da = FUNC17 (u, naid);
      if (da == NULL) {
        return 0;
      }

      if (FUNC7 (da) + 1 > FUNC0 (naid)) {
        return 0;
      }

      actual_object o;
      int lid = FUNC9 (d, pid);
      FUNC1 (lid >= 0);

      FUNC1 (FUNC6 (d, lid, &o) >= 0);

      event *ne = FUNC12 (o.obj, o.dyn, PHOTO_TYPE);
      if (ne == o.obj) {
        ne = FUNC11 (ne);
      }

      FUNC5 (d, pid);

      lid = FUNC4 (da, pid);
      FUNC1 (lid >= 0);

      my_change ch;
      ch.tp = ch_event;
      ch.e = ne;

      FUNC3 (da, (change *)&ch, lid);
      FUNC13 (&u->album_by_photo, pid, naid);

      d = da;

//      dbg ("Move (photo_id = %d) to (album_id = %d) (field_changes_n = %d)\n", pid, field_changes[i].v_int, field_changes_n);
    }
  }

  return FUNC14 (d, pid, field_changes, field_changes_n, 0) > -1;
}