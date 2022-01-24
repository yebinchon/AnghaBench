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
struct ar8xxx_priv {int dummy; } ;

/* Variables and functions */
 int AR8216_MIB_FUNC ; 
 int AR8216_MIB_FUNC_NO_OP ; 
 int AR8216_MIB_FUNC_S ; 
 int /*<<< orphan*/  AR8216_REG_ATU_CTRL ; 
 int /*<<< orphan*/  AR8216_REG_FLOOD_MASK ; 
 int /*<<< orphan*/  AR8216_REG_GLOBAL_CTRL ; 
 int /*<<< orphan*/  AR8216_REG_MIB_FUNC ; 
 int AR8236_ATU_CTRL_RES ; 
 int AR8236_FM_CPU_BCAST_FWD_EN ; 
 int AR8236_FM_CPU_BROADCAST_EN ; 
 int AR8236_MIB_EN ; 
 int AR8316_GCTRL_MTU ; 
 int /*<<< orphan*/  FUNC0 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC2(struct ar8xxx_priv *priv)
{
	/* enable jumbo frames */
	FUNC1(priv, AR8216_REG_GLOBAL_CTRL,
		   AR8316_GCTRL_MTU, 9018 + 8 + 2);

	/* enable cpu port to receive arp frames */
	FUNC0(priv, AR8216_REG_ATU_CTRL,
		   AR8236_ATU_CTRL_RES);

	/* enable cpu port to receive multicast and broadcast frames */
	FUNC0(priv, AR8216_REG_FLOOD_MASK,
		   AR8236_FM_CPU_BROADCAST_EN | AR8236_FM_CPU_BCAST_FWD_EN);

	/* Enable MIB counters */
	FUNC1(priv, AR8216_REG_MIB_FUNC, AR8216_MIB_FUNC | AR8236_MIB_EN,
		   (AR8216_MIB_FUNC_NO_OP << AR8216_MIB_FUNC_S) |
		   AR8236_MIB_EN);
}