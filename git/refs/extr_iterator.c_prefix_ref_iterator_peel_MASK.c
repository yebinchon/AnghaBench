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
struct ref_iterator {int dummy; } ;
struct prefix_ref_iterator {int /*<<< orphan*/  iter0; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct object_id*) ; 

__attribute__((used)) static int FUNC1(struct ref_iterator *ref_iterator,
				    struct object_id *peeled)
{
	struct prefix_ref_iterator *iter =
		(struct prefix_ref_iterator *)ref_iterator;

	return FUNC0(iter->iter0, peeled);
}