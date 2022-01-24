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
struct object_id {int dummy; } ;
struct merge_ref_iterator {int /*<<< orphan*/ * current; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct object_id*) ; 

__attribute__((used)) static int FUNC2(struct ref_iterator *ref_iterator,
				   struct object_id *peeled)
{
	struct merge_ref_iterator *iter =
		(struct merge_ref_iterator *)ref_iterator;

	if (!iter->current) {
		FUNC0("peel called before advance for merge iterator");
	}
	return FUNC1(*iter->current, peeled);
}