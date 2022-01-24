#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct unpacked {scalar_t__ depth; TYPE_1__* object; int /*<<< orphan*/ * data; int /*<<< orphan*/ * index; } ;
struct TYPE_2__ {scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC3(struct unpacked *n)
{
	size_t freed_mem = 0;

	if (n->index) {
		freed_mem += FUNC2(n->index);
		FUNC1(n->index);
	}
	n->index = NULL;

	if (n->data) {
		freed_mem += n->object->size;
		FUNC0(n->data);
		n->data = NULL;
	}
	n->object = NULL;
	n->depth = 0;
	return freed_mem;
}