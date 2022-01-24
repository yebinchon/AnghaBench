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
struct unpack_trees_options {int /*<<< orphan*/ * unpack_rejects; int /*<<< orphan*/  show_all_errors; scalar_t__ quiet; } ;
typedef  enum unpack_trees_error_types { ____Placeholder_unpack_trees_error_types } unpack_trees_error_types ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct unpack_trees_options*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(struct unpack_trees_options *o,
			     enum unpack_trees_error_types e,
			     const char *path)
{
	if (o->quiet)
		return -1;

	if (!o->show_all_errors)
		return FUNC1(FUNC0(o, e), FUNC3(path));

	/*
	 * Otherwise, insert in a list for future display by
	 * display_error_msgs()
	 */
	FUNC2(&o->unpack_rejects[e], path);
	return -1;
}