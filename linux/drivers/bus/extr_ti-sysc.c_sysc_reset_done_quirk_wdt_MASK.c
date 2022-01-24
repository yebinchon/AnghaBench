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
typedef  int u32 ;
struct sysc {int /*<<< orphan*/  dev; scalar_t__ module_va; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_MODULE_SOFTRESET_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (scalar_t__,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sysc*,int,int) ; 

__attribute__((used)) static void FUNC3(struct sysc *ddata)
{
	int wps, spr, error;
	u32 val;

	wps = 0x34;
	spr = 0x48;

	FUNC2(ddata, spr, 0xaaaa);
	error = FUNC1(ddata->module_va + wps, val,
				   !(val & 0x10), 100,
				   MAX_MODULE_SOFTRESET_WAIT);
	if (error)
		FUNC0(ddata->dev, "wdt disable step1 failed\n");

	FUNC2(ddata, spr, 0x5555);
	error = FUNC1(ddata->module_va + wps, val,
				   !(val & 0x10), 100,
				   MAX_MODULE_SOFTRESET_WAIT);
	if (error)
		FUNC0(ddata->dev, "wdt disable step2 failed\n");
}