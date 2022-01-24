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
typedef  int u32 ;
struct iadev_priv {int carrier_detect; } ;
struct ia_reg {int member_1; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ia_reg const*) ; 
#define  SUNI_CONFIG 133 
#define  SUNI_DS3_FRM_CFG 132 
#define  SUNI_DS3_FRM_INTR_ENBL 131 
 int /*<<< orphan*/  SUNI_DS3_FRM_STAT ; 
 int SUNI_DS3_LOSV ; 
#define  SUNI_DS3_TRAN_CFG 130 
#define  SUNI_SPLR_CFG 129 
#define  SUNI_SPLT_CFG 128 
 int FUNC1 (struct iadev_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iadev_priv*,struct ia_reg const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct iadev_priv *iadev)
{
	static const struct ia_reg suni_ds3_init[] = {
		{ SUNI_DS3_FRM_INTR_ENBL,	0x17 },
		{ SUNI_DS3_FRM_CFG,		0x01 },
		{ SUNI_DS3_TRAN_CFG,		0x01 },
		{ SUNI_CONFIG,			0 },
		{ SUNI_SPLR_CFG,		0 },
		{ SUNI_SPLT_CFG,		0 }
	};
	u32 status;

	status = FUNC1(iadev, SUNI_DS3_FRM_STAT);
	iadev->carrier_detect = (status & SUNI_DS3_LOSV) ? 0 : 1;

	FUNC2(iadev, suni_ds3_init, FUNC0(suni_ds3_init));
}