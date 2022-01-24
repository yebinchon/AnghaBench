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
 unsigned int MASTER_ICW4_DEFAULT ; 
 unsigned int PIC_CASCADE_IR ; 
 scalar_t__ PIC_CMD ; 
 scalar_t__ PIC_IMR ; 
 unsigned int SLAVE_ICW4_DEFAULT ; 
 unsigned int cached_master_mask ; 
 unsigned int cached_slave_mask ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ rm200_pic_master ; 
 scalar_t__ rm200_pic_slave ; 
 int /*<<< orphan*/  sni_rm200_i8259A_lock ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

void FUNC4(void)
{
	unsigned long flags;

	FUNC0(&sni_rm200_i8259A_lock, flags);

	FUNC3(0xff, rm200_pic_master + PIC_IMR);
	FUNC3(0xff, rm200_pic_slave + PIC_IMR);

	FUNC3(0x11, rm200_pic_master + PIC_CMD);
	FUNC3(0, rm200_pic_master + PIC_IMR);
	FUNC3(1U << PIC_CASCADE_IR, rm200_pic_master + PIC_IMR);
	FUNC3(MASTER_ICW4_DEFAULT, rm200_pic_master + PIC_IMR);
	FUNC3(0x11, rm200_pic_slave + PIC_CMD);
	FUNC3(8, rm200_pic_slave + PIC_IMR);
	FUNC3(PIC_CASCADE_IR, rm200_pic_slave + PIC_IMR);
	FUNC3(SLAVE_ICW4_DEFAULT, rm200_pic_slave + PIC_IMR);
	FUNC2(100);		/* wait for 8259A to initialize */

	FUNC3(cached_master_mask, rm200_pic_master + PIC_IMR);
	FUNC3(cached_slave_mask, rm200_pic_slave + PIC_IMR);

	FUNC1(&sni_rm200_i8259A_lock, flags);
}