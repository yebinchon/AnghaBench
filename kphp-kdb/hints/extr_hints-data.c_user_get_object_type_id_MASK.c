#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int object_old_n; long long* object_type_ids; int /*<<< orphan*/  object_table; } ;
typedef  TYPE_1__ user ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 long long FUNC1 (int /*<<< orphan*/ *,int) ; 

long long FUNC2 (user *u, int local_id) {
  FUNC0 (u, local_id);

  if (local_id <= u->object_old_n) {
    return u->object_type_ids[local_id];
  } else {
    return FUNC1 (&u->object_table, local_id - u->object_old_n);
  }
}