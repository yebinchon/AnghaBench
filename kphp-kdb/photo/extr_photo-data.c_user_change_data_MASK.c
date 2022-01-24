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
typedef  int /*<<< orphan*/  field ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 

inline int FUNC4 (data *d, int id, field *field_changes, int field_changes_n, int force) {
//  dbg ("user_change_data ???: id = %d, field_changes_n = %d\n", id, field_changes_n);

  FUNC0 (d != NULL);
  int lid = FUNC2 (d, id);
  if (lid == -1) {
    return 0;
  }

  if (!force && FUNC1 (d, id) != 0) {
    return 0;
  }

  return FUNC3 (d, lid, field_changes, field_changes_n);
}