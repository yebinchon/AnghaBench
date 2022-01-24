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
typedef  int uint32_t ;
struct kobject {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int OPAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  dump_kset ; 
 int FUNC1 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct kobject*) ; 
 struct kobject* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	int rc;
	uint32_t dump_id, dump_size, dump_type;
	char name[22];
	struct kobject *kobj;

	rc = FUNC1(&dump_id, &dump_size, &dump_type);
	if (rc != OPAL_SUCCESS)
		return IRQ_HANDLED;

	FUNC4(name, "0x%x-0x%x", dump_type, dump_id);

	/* we may get notified twice, let's handle
	 * that gracefully and not create two conflicting
	 * entries.
	 */
	kobj = FUNC3(dump_kset, name);
	if (kobj) {
		/* Drop reference added by kset_find_obj() */
		FUNC2(kobj);
		return IRQ_HANDLED;
	}

	FUNC0(dump_id, dump_size, dump_type);

	return IRQ_HANDLED;
}