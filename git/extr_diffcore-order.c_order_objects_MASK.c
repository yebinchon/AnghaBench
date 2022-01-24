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
struct obj_order {int orig_order; int /*<<< orphan*/  obj; int /*<<< orphan*/  order; } ;
typedef  int /*<<< orphan*/  (* obj_path_fn_t ) (int /*<<< orphan*/ ) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obj_order*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compare_objs_order ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

void FUNC3(const char *orderfile, obj_path_fn_t obj_path,
		   struct obj_order *objs, int nr)
{
	int i;

	if (!nr)
		return;

	FUNC2(orderfile);
	for (i = 0; i < nr; i++) {
		objs[i].orig_order = i;
		objs[i].order = FUNC1(obj_path(objs[i].obj));
	}
	FUNC0(objs, nr, compare_objs_order);
}