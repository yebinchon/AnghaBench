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
struct empty_ref_iterator {struct ref_iterator base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ref_iterator*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  empty_ref_iterator_vtable ; 
 struct empty_ref_iterator* FUNC1 (int,int) ; 

struct ref_iterator *FUNC2(void)
{
	struct empty_ref_iterator *iter = FUNC1(1, sizeof(*iter));
	struct ref_iterator *ref_iterator = &iter->base;

	FUNC0(ref_iterator, &empty_ref_iterator_vtable, 1);
	return ref_iterator;
}