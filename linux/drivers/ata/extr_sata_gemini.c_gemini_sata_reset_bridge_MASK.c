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
struct sata_gemini {int /*<<< orphan*/  sata1_reset; int /*<<< orphan*/  sata0_reset; } ;

/* Variables and functions */
 int FUNC0 (struct sata_gemini*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct sata_gemini *sg,
			     unsigned int bridge)
{
	if (bridge == 0)
		FUNC2(sg->sata0_reset);
	else
		FUNC2(sg->sata1_reset);
	FUNC1(10);
	return FUNC0(sg, bridge);
}