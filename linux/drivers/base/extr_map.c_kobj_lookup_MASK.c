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
struct probe {int dev; int range; scalar_t__ (* lock ) (int,void*) ;struct kobject* (* get ) (int,int*,void*) ;void* data; struct module* owner; struct probe* next; } ;
struct module {int dummy; } ;
struct kobject {int dummy; } ;
struct kobj_map {int /*<<< orphan*/  lock; struct probe** probes; } ;
typedef  int dev_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct module*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct module*) ; 

struct kobject *FUNC6(struct kobj_map *domain, dev_t dev, int *index)
{
	struct kobject *kobj;
	struct probe *p;
	unsigned long best = ~0UL;

retry:
	FUNC2(domain->lock);
	for (p = domain->probes[FUNC0(dev) % 255]; p; p = p->next) {
		struct kobject *(*probe)(dev_t, int *, void *);
		struct module *owner;
		void *data;

		if (p->dev > dev || p->dev + p->range - 1 < dev)
			continue;
		if (p->range - 1 >= best)
			break;
		if (!FUNC5(p->owner))
			continue;
		owner = p->owner;
		data = p->data;
		probe = p->get;
		best = p->range - 1;
		*index = dev - p->dev;
		if (p->lock && p->lock(dev, data) < 0) {
			FUNC1(owner);
			continue;
		}
		FUNC3(domain->lock);
		kobj = probe(dev, index, data);
		/* Currently ->owner protects _only_ ->probe() itself. */
		FUNC1(owner);
		if (kobj)
			return kobj;
		goto retry;
	}
	FUNC3(domain->lock);
	return NULL;
}