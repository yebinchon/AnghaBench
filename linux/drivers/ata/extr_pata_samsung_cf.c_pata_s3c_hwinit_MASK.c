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
struct s3c_ide_platdata {int dummy; } ;
struct s3c_ide_info {int cpu_type; scalar_t__ ide_addr; int /*<<< orphan*/  sfr_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ S3C_ATA_IRQ ; 
 scalar_t__ S3C_ATA_IRQ_MSK ; 
#define  TYPE_S3C64XX 129 
#define  TYPE_S5PV210 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct s3c_ide_info *info,
				struct s3c_ide_platdata *pdata)
{
	switch (info->cpu_type) {
	case TYPE_S3C64XX:
		/* Configure as big endian */
		FUNC2(info->sfr_addr);
		FUNC4(info->ide_addr, 1);
		FUNC3(info->ide_addr, true);
		FUNC1(100);

		/* Remove IRQ Status */
		FUNC5(0x1f, info->ide_addr + S3C_ATA_IRQ);
		FUNC5(0x1b, info->ide_addr + S3C_ATA_IRQ_MSK);
		break;

	case TYPE_S5PV210:
		/* Configure as little endian */
		FUNC4(info->ide_addr, 0);
		FUNC3(info->ide_addr, true);
		FUNC1(100);

		/* Remove IRQ Status */
		FUNC5(0x3f, info->ide_addr + S3C_ATA_IRQ);
		FUNC5(0x3f, info->ide_addr + S3C_ATA_IRQ_MSK);
		break;

	default:
		FUNC0();
	}
}