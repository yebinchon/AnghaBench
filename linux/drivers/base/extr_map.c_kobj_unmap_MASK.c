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
struct probe {scalar_t__ dev; unsigned long range; struct probe* next; } ;
struct kobj_map {int /*<<< orphan*/  lock; struct probe** probes; } ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct probe*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct kobj_map *domain, dev_t dev, unsigned long range)
{
	unsigned n = FUNC0(dev + range - 1) - FUNC0(dev) + 1;
	unsigned index = FUNC0(dev);
	unsigned i;
	struct probe *found = NULL;

	if (n > 255)
		n = 255;

	FUNC2(domain->lock);
	for (i = 0; i < n; i++, index++) {
		struct probe **s;
		for (s = &domain->probes[index % 255]; *s; s = &(*s)->next) {
			struct probe *p = *s;
			if (p->dev == dev && p->range == range) {
				*s = p->next;
				if (!found)
					found = p;
				break;
			}
		}
	}
	FUNC3(domain->lock);
	FUNC1(found);
}