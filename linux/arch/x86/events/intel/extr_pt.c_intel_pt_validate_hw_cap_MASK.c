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
typedef  int /*<<< orphan*/  u32 ;
typedef  enum pt_capabilities { ____Placeholder_pt_capabilities } pt_capabilities ;
struct TYPE_2__ {int /*<<< orphan*/  caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__ pt_pmu ; 

u32 FUNC1(enum pt_capabilities cap)
{
	return FUNC0(pt_pmu.caps, cap);
}