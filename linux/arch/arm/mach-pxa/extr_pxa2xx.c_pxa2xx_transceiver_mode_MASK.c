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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int IR_FIRMODE ; 
 int IR_OFF ; 
 int IR_SIRMODE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pxa2xx_mfp_fir ; 
 int /*<<< orphan*/  pxa2xx_mfp_off ; 
 int /*<<< orphan*/  pxa2xx_mfp_sir ; 

void FUNC3(struct device *dev, int mode)
{
	if (mode & IR_OFF) {
		FUNC2(pxa2xx_mfp_off, FUNC0(pxa2xx_mfp_off));
	} else if (mode & IR_SIRMODE) {
		FUNC2(pxa2xx_mfp_sir, FUNC0(pxa2xx_mfp_sir));
	} else if (mode & IR_FIRMODE) {
		FUNC2(pxa2xx_mfp_fir, FUNC0(pxa2xx_mfp_fir));
	} else
		FUNC1();
}