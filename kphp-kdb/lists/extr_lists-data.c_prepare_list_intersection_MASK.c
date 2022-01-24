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
typedef  int /*<<< orphan*/  list_id_t ;
typedef  int /*<<< orphan*/  array_object_id_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int id_ints ; 
 int /*<<< orphan*/  list_intersect_x ; 
 int /*<<< orphan*/  list_intersect_x_prefix ; 
 int object_id_ints ; 
 int /*<<< orphan*/  report_x ; 

int FUNC2 (list_id_t list_id, int mode, array_object_id_t List[], int LL, int have_weights, int _id_ints) {
  id_ints = _id_ints;
  if (id_ints == object_id_ints) {
    report_x = list_intersect_x;
    return FUNC0 (list_id, mode, List, LL, 0, have_weights);
  } else {
    report_x = list_intersect_x_prefix;
    return FUNC1 (list_id, mode, List, LL, 0, have_weights);
  }
}