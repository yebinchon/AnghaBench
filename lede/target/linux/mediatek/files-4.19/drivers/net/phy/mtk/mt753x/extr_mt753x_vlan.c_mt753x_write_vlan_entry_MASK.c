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
typedef  int u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct gsw_mt753x {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ETAG_CTRL_TAG ; 
 int ETAG_CTRL_UNTAG ; 
 int IVL_MAC ; 
 int MT753X_NUM_PORTS ; 
 int FUNC1 (int) ; 
 int PORT_MEM_M ; 
 int PORT_MEM_S ; 
 int /*<<< orphan*/  VAWD1 ; 
 int /*<<< orphan*/  VAWD2 ; 
 int VENTRY_VALID ; 
 int VTAG_EN ; 
 int /*<<< orphan*/  VTCR_WRITE_VLAN_ENTRY ; 
 int /*<<< orphan*/  FUNC2 (struct gsw_mt753x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gsw_mt753x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct gsw_mt753x *gsw, int vlan, u16 vid,
				    u8 ports, u8 etags)
{
	int port;
	u32 val;

	/* vlan port membership */
	if (ports)
		FUNC2(gsw, VAWD1,
				 IVL_MAC | VTAG_EN | VENTRY_VALID |
				 ((ports << PORT_MEM_S) & PORT_MEM_M));
	else
		FUNC2(gsw, VAWD1, 0);

	/* egress mode */
	val = 0;
	for (port = 0; port < MT753X_NUM_PORTS; port++) {
		if (etags & FUNC0(port))
			val |= ETAG_CTRL_TAG << FUNC1(port);
		else
			val |= ETAG_CTRL_UNTAG << FUNC1(port);
	}
	FUNC2(gsw, VAWD2, val);

	/* write to vlan table */
	FUNC3(gsw, VTCR_WRITE_VLAN_ENTRY, vid);
}