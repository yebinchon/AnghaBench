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
 int /*<<< orphan*/  MX31_PIN_ATA_DMACK ; 
 int /*<<< orphan*/  MX31_PIN_ATA_RESET_B ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct device *dev, void *data)
{
	FUNC1(FUNC3(FUNC0(MX31_PIN_ATA_DMACK)), data);
	FUNC2(FUNC0(MX31_PIN_ATA_DMACK));
	FUNC2(FUNC0(MX31_PIN_ATA_RESET_B));
}