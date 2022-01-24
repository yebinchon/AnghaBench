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
 int AR8327_FRAME_ACK_CTRL_IGMP_JOIN ; 
 int AR8327_FRAME_ACK_CTRL_IGMP_LEAVE ; 
 int AR8327_FRAME_ACK_CTRL_IGMP_MLD ; 
 int FUNC0 (int) ; 
 int AR8327_FWD_CTRL1_IGMP_S ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  AR8327_REG_FWD_CTRL1 ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct ar8xxx_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct ar8xxx_priv *priv, int port)
{
	u32 fwd_ctrl, frame_ack;

	fwd_ctrl = (FUNC2(port) << AR8327_FWD_CTRL1_IGMP_S);
	frame_ack = ((AR8327_FRAME_ACK_CTRL_IGMP_MLD |
		      AR8327_FRAME_ACK_CTRL_IGMP_JOIN |
		      AR8327_FRAME_ACK_CTRL_IGMP_LEAVE) <<
		     FUNC0(port));

	return (FUNC3(priv, AR8327_REG_FWD_CTRL1) &
			fwd_ctrl) == fwd_ctrl &&
		(FUNC3(priv, FUNC1(port)) &
			frame_ack) == frame_ack;
}