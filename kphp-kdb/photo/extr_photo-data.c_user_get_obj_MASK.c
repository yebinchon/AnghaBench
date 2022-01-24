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
typedef  int /*<<< orphan*/  data ;
struct TYPE_4__ {int /*<<< orphan*/  deleted; } ;
typedef  TYPE_1__ actual_object ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

inline int FUNC3 (data *d, int id, const int force, actual_object *o) {
  int local_id = FUNC2 (d, id);
  if (local_id < 0 || ((o->deleted = FUNC1 (d, id)) != 0 && !force) || FUNC0 (d, local_id, o) < 0) {
    return -1;
  }
  return 0;
}