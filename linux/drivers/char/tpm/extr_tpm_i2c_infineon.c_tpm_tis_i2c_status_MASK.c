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
typedef  int u8 ;
struct tpm_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  locality; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 TYPE_1__ tpm_dev ; 

__attribute__((used)) static u8 FUNC2(struct tpm_chip *chip)
{
	/* NOTE: since I2C read may fail, return 0 in this case --> time-out */
	u8 buf = 0xFF;
	u8 i = 0;

	do {
		if (FUNC1(FUNC0(tpm_dev.locality), &buf, 1) < 0)
			return 0;

		i++;
	/* if locallity is set STS should not be 0xFF */
	} while ((buf == 0xFF) && i < 10);

	return buf;
}