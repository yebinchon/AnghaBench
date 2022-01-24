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
struct sysc {int /*<<< orphan*/  module_size; int /*<<< orphan*/  module_pa; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int SYSC_MAX_REGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct sysc*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysc*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct sysc*) ; 

__attribute__((used)) static void FUNC4(struct sysc *ddata)
{
	char buf[128];
	char *bufp = buf;
	int i;

	for (i = 0; i < SYSC_MAX_REGS; i++)
		bufp += FUNC2(ddata, bufp, i);

	bufp += FUNC3(bufp, ddata);
	bufp += FUNC1(bufp, ddata);

	FUNC0(ddata->dev, "%llx:%x%s\n",
		ddata->module_pa, ddata->module_size,
		buf);
}