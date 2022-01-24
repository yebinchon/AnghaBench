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
struct aper_size_info_8 {int size_value; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  previous_size; } ;

/* Variables and functions */
 struct aper_size_info_8* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIS_APSIZE ; 
 TYPE_1__* agp_bridge ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(void)
{
	struct aper_size_info_8 *previous_size;

	previous_size = FUNC0(agp_bridge->previous_size);
	FUNC1(agp_bridge->dev, SIS_APSIZE,
			      (previous_size->size_value & ~(0x03)));
}