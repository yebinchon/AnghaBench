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
 int /*<<< orphan*/  H1940_LATCH_MAX1698_nSHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S3C2410_GPB0_TOUT0 ; 
 int /*<<< orphan*/  S3C_GPIO_PULL_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev, int brightness)
{
	if (!brightness) {
		FUNC1(FUNC0(0), 1);
		FUNC2(H1940_LATCH_MAX1698_nSHUTDOWN, 0);
	} else {
		FUNC1(FUNC0(0), 0);
		FUNC4(FUNC0(0), S3C_GPIO_PULL_NONE);
		FUNC3(FUNC0(0), S3C2410_GPB0_TOUT0);
		FUNC2(H1940_LATCH_MAX1698_nSHUTDOWN, 1);
	}
	return brightness;
}