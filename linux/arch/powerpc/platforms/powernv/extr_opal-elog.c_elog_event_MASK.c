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
typedef  scalar_t__ uint64_t ;
struct kobject {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ OPAL_MAX_ERRLOG_SIZE ; 
 int OPAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  elog_kset ; 
 int /*<<< orphan*/  FUNC3 (struct kobject*) ; 
 struct kobject* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *data)
{
	__be64 size;
	__be64 id;
	__be64 type;
	uint64_t elog_size;
	uint64_t log_id;
	uint64_t elog_type;
	int rc;
	char name[2+16+1];
	struct kobject *kobj;

	rc = FUNC5(&id, &size, &type);
	if (rc != OPAL_SUCCESS) {
		FUNC6("ELOG: OPAL log info read failed\n");
		return IRQ_HANDLED;
	}

	elog_size = FUNC1(size);
	log_id = FUNC1(id);
	elog_type = FUNC1(type);

	FUNC0(elog_size > OPAL_MAX_ERRLOG_SIZE);

	if (elog_size >= OPAL_MAX_ERRLOG_SIZE)
		elog_size  =  OPAL_MAX_ERRLOG_SIZE;

	FUNC7(name, "0x%llx", log_id);

	/* we may get notified twice, let's handle
	 * that gracefully and not create two conflicting
	 * entries.
	 */
	kobj = FUNC4(elog_kset, name);
	if (kobj) {
		/* Drop reference added by kset_find_obj() */
		FUNC3(kobj);
		return IRQ_HANDLED;
	}

	FUNC2(log_id, elog_size, elog_type);

	return IRQ_HANDLED;
}