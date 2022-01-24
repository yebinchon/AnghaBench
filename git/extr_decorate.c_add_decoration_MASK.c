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
struct object {int dummy; } ;
struct decoration {int nr; int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct decoration*) ; 
 void* FUNC1 (struct decoration*,struct object const*,void*) ; 

void *FUNC2(struct decoration *n, const struct object *obj,
		void *decoration)
{
	int nr = n->nr + 1;

	if (nr > n->size * 2 / 3)
		FUNC0(n);
	return FUNC1(n, obj, decoration);
}