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

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  GDROM_DMA_ACCESS_CTRL_REG ; 
 int /*<<< orphan*/  GDROM_DMA_WAIT_REG ; 
 int /*<<< orphan*/  GDROM_ERROR_REG ; 
 int /*<<< orphan*/  GDROM_INTSEC_REG ; 
 int /*<<< orphan*/  GDROM_STATUSCOMMAND_REG ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(void)
{
	FUNC0(0x13, GDROM_ERROR_REG);
	FUNC0(0x22, GDROM_INTSEC_REG);
	if (!FUNC3())
		return -EBUSY;
	FUNC0(0xEF, GDROM_STATUSCOMMAND_REG);
	if (!FUNC2())
		return -EBUSY;
	/* Memory protection setting for GDROM DMA
	* Bits 31 - 16 security: 0x8843
	* Bits 15 and 7 reserved (0)
	* Bits 14 - 8 start of transfer range in 1 MB blocks OR'ed with 0x80
	* Bits 6 - 0 end of transfer range in 1 MB blocks OR'ed with 0x80
	* (0x40 | 0x80) = start range at 0x0C000000
	* (0x7F | 0x80) = end range at 0x0FFFFFFF */
	FUNC1(0x8843407F, GDROM_DMA_ACCESS_CTRL_REG);
	FUNC1(9, GDROM_DMA_WAIT_REG); /* DMA word setting */
	return 0;
}