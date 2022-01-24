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
struct gendisk {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 TYPE_1__* FUNC0 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 

__attribute__((used)) static void FUNC2(struct gendisk *gd, int ro)
{
	char event[] = "DISK_RO=1";
	char *envp[] = { event, NULL };

	if (!ro)
		event[8] = '0';
	FUNC1(&FUNC0(gd)->kobj, KOBJ_CHANGE, envp);
}