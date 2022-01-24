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
struct pktcdvd_kobj {int /*<<< orphan*/  kobj; struct pktcdvd_device* pd; } ;
struct pktcdvd_device {int dummy; } ;
struct kobject {int dummy; } ;
struct kobj_type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int FUNC0 (int /*<<< orphan*/ *,struct kobj_type*,struct kobject*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pktcdvd_kobj* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct pktcdvd_kobj* FUNC4(struct pktcdvd_device *pd,
					const char* name,
					struct kobject* parent,
					struct kobj_type* ktype)
{
	struct pktcdvd_kobj *p;
	int error;

	p = FUNC3(sizeof(*p), GFP_KERNEL);
	if (!p)
		return NULL;
	p->pd = pd;
	error = FUNC0(&p->kobj, ktype, parent, "%s", name);
	if (error) {
		FUNC1(&p->kobj);
		return NULL;
	}
	FUNC2(&p->kobj, KOBJ_ADD);
	return p;
}