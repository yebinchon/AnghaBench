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
struct ar8xxx_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR8327_REG_VTU_FUNC0 ; 
 int /*<<< orphan*/  AR8327_REG_VTU_FUNC1 ; 
 int AR8327_VTU_FUNC1_BUSY ; 
 int AR8327_VTU_FUNC1_OP ; 
 int AR8327_VTU_FUNC1_OP_LOAD ; 
 scalar_t__ FUNC0 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct ar8xxx_priv *priv, u32 op, u32 val)
{
	if (FUNC0(priv, AR8327_REG_VTU_FUNC1,
			    AR8327_VTU_FUNC1_BUSY, 0))
		return;

	if ((op & AR8327_VTU_FUNC1_OP) == AR8327_VTU_FUNC1_OP_LOAD)
		FUNC1(priv, AR8327_REG_VTU_FUNC0, val);

	op |= AR8327_VTU_FUNC1_BUSY;
	FUNC1(priv, AR8327_REG_VTU_FUNC1, op);
}