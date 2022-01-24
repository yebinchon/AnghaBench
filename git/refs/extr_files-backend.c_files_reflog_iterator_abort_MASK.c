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
struct files_reflog_iterator {scalar_t__ dir_iterator; } ;

/* Variables and functions */
 int ITER_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct ref_iterator*) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct ref_iterator *ref_iterator)
{
	struct files_reflog_iterator *iter =
		(struct files_reflog_iterator *)ref_iterator;
	int ok = ITER_DONE;

	if (iter->dir_iterator)
		ok = FUNC1(iter->dir_iterator);

	FUNC0(ref_iterator);
	return ok;
}