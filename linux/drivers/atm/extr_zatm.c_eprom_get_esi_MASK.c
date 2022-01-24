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
struct atm_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZEPROM_V1_ESI_OFF ; 
 int /*<<< orphan*/  ZEPROM_V1_REG ; 
 int /*<<< orphan*/  ZEPROM_V2_ESI_OFF ; 
 int /*<<< orphan*/  ZEPROM_V2_REG ; 
 scalar_t__ FUNC0 (struct atm_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct atm_dev *dev)
{
	if (FUNC0(dev,ZEPROM_V1_REG,ZEPROM_V1_ESI_OFF,1)) return;
	(void) FUNC0(dev,ZEPROM_V2_REG,ZEPROM_V2_ESI_OFF,0);
}