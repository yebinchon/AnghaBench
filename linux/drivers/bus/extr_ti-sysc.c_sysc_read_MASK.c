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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {int quirks; } ;
struct sysc {int* offsets; scalar_t__ module_va; TYPE_1__ cfg; } ;

/* Variables and functions */
 int SYSC_QUIRK_16BIT ; 
 size_t SYSC_REVISION ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static u32 FUNC2(struct sysc *ddata, int offset)
{
	if (ddata->cfg.quirks & SYSC_QUIRK_16BIT) {
		u32 val;

		val = FUNC1(ddata->module_va + offset);

		/* Only i2c revision has LO and HI register with stride of 4 */
		if (ddata->offsets[SYSC_REVISION] >= 0 &&
		    offset == ddata->offsets[SYSC_REVISION]) {
			u16 tmp = FUNC1(ddata->module_va + offset + 4);

			val |= tmp << 16;
		}

		return val;
	}

	return FUNC0(ddata->module_va + offset);
}