#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ user ;
struct TYPE_9__ {scalar_t__ v_fid; } ;
typedef  TYPE_2__ field ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 scalar_t__ album_type_id ; 
 scalar_t__ album_type_owner_id ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ write_only ; 

int FUNC5 (user *u, int aid, field *field_changes, int field_changes_n) {
  FUNC1 ("user_change_album %d: album_id = %d, field_changes_n = %d\n", u->id, aid, field_changes_n);

  if (write_only) {
    return 1;
  }

  FUNC0 (FUNC4 (u));

  data *d = FUNC3 (u);
  FUNC0 (d != NULL);

  int i;
  for (i = 0; i < field_changes_n; i++) {
//    dbg ("change field #%d\n", field_changes[i].v_fid);
    FUNC0 (field_changes[i].v_fid != album_type_id && field_changes[i].v_fid != album_type_owner_id);
  }

  return FUNC2 (d, aid, field_changes, field_changes_n, 0) > -1;
}