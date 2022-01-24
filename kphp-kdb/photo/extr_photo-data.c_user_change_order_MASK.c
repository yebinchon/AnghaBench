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
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  write_only ; 

inline int FUNC7 (data *d, int id, int id_near, int is_next) {
//  dbg ("user_change_order ???: id = %d, id_near = %d, is_next = %d\n", id, id_near, is_next);

  FUNC0 (!write_only);

  if (FUNC2 (d, id) != 0 || (id_near != 0 && FUNC2 (d, id_near) != 0)) {
    return 0;
  }

  int i, j;

//  dbg ("user_change_order (id = %d) (id_near = %d)\n", id, id_near);
  int local_id = FUNC3 (d, id);
  i = FUNC5 (d, local_id);
  if (i < 0) {
    return i;
  }

  int local_id_near;
  if (id_near != 0) {
    local_id_near = FUNC3 (d, id_near);
    j = FUNC5 (d, local_id_near);
    if (j < 0) {
      return j;
    }
    if (is_next) {
      j--;
      local_id_near = FUNC4 (d, j);
    }
//    dbg ("user_change_order (i = %d) (j = %d)\n", i, j);
    if (i > j) {
      j++;
    }
  } else {
    if (is_next) {
      j = FUNC1 (d) - 1;
      local_id_near = FUNC4 (d, j);
    } else {
      j = 0;
      local_id_near = -1;
    }
  }

  return FUNC6 (d, i, j, local_id, local_id_near);
}