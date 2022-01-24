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
 int /*<<< orphan*/  AR8216_REG_VTU ; 
 int /*<<< orphan*/  AR8216_REG_VTU_DATA ; 
 int AR8216_VTUDATA_MEMBER ; 
 int AR8216_VTUDATA_VALID ; 
 int AR8216_VTU_ACTIVE ; 
 int AR8216_VTU_OP ; 
 int AR8216_VTU_OP_LOAD ; 
 scalar_t__ FUNC0 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct ar8xxx_priv *priv, u32 op, u32 val)
{
	if (FUNC0(priv, AR8216_REG_VTU, AR8216_VTU_ACTIVE, 0))
		return;
	if ((op & AR8216_VTU_OP) == AR8216_VTU_OP_LOAD) {
		val &= AR8216_VTUDATA_MEMBER;
		val |= AR8216_VTUDATA_VALID;
		FUNC1(priv, AR8216_REG_VTU_DATA, val);
	}
	op |= AR8216_VTU_ACTIVE;
	FUNC1(priv, AR8216_REG_VTU, op);
}