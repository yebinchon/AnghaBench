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
typedef  int /*<<< orphan*/  listree_t ;
typedef  int /*<<< orphan*/  global_id_t ;

/* Variables and functions */
 int /*<<< orphan*/ * M_global_id_list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3 (listree_t *LT, int temp_id) {
  if (sizeof (global_id_t) == sizeof (int)) {
    FUNC1 (M_global_id_list[temp_id]);
  } else if (sizeof (global_id_t) == sizeof (long long)) {
    FUNC2 (M_global_id_list[temp_id]);
  } else {
    FUNC0 (0);
  }
  return 0;
}