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
typedef  int /*<<< orphan*/  u32 ;
struct gdsc {int /*<<< orphan*/  gdscr; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_CONTROL_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct gdsc *sc, bool en)
{
	u32 val = en ? HW_CONTROL_MASK : 0;

	return FUNC0(sc->regmap, sc->gdscr, HW_CONTROL_MASK, val);
}