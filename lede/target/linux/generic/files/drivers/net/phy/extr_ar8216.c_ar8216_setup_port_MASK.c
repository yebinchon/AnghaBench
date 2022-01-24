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
struct ar8xxx_priv {int* vlan_id; size_t* pvid; int vlan_tagged; scalar_t__ vlan; } ;

/* Variables and functions */
 int AR8216_IN_PORT_ONLY ; 
 int AR8216_IN_SECURE ; 
 int AR8216_OUT_ADD_VLAN ; 
 int AR8216_OUT_KEEP ; 
 int AR8216_OUT_STRIP_VLAN ; 
 int AR8216_PORT_CPU ; 
 int AR8216_PORT_CTRL_HEADER ; 
 int AR8216_PORT_CTRL_LEARN ; 
 int AR8216_PORT_CTRL_LEARN_LOCK ; 
 int AR8216_PORT_CTRL_SINGLE_VLAN ; 
 int AR8216_PORT_CTRL_STATE ; 
 int AR8216_PORT_CTRL_STATE_S ; 
 int AR8216_PORT_CTRL_VLAN_MODE ; 
 int AR8216_PORT_CTRL_VLAN_MODE_S ; 
 int AR8216_PORT_STATE_FORWARD ; 
 int AR8216_PORT_VLAN_DEFAULT_ID ; 
 int AR8216_PORT_VLAN_DEFAULT_ID_S ; 
 int AR8216_PORT_VLAN_DEST_PORTS ; 
 int AR8216_PORT_VLAN_DEST_PORTS_S ; 
 int AR8216_PORT_VLAN_MODE ; 
 int AR8216_PORT_VLAN_MODE_S ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC3 (struct ar8xxx_priv*) ; 

__attribute__((used)) static void
FUNC4(struct ar8xxx_priv *priv, int port, u32 members)
{
	u32 header;
	u32 egress, ingress;
	u32 pvid;

	if (priv->vlan) {
		pvid = priv->vlan_id[priv->pvid[port]];
		if (priv->vlan_tagged & (1 << port))
			egress = AR8216_OUT_ADD_VLAN;
		else
			egress = AR8216_OUT_STRIP_VLAN;
		ingress = AR8216_IN_SECURE;
	} else {
		pvid = port;
		egress = AR8216_OUT_KEEP;
		ingress = AR8216_IN_PORT_ONLY;
	}

	if (FUNC3(priv) && priv->vlan && port == AR8216_PORT_CPU)
		header = AR8216_PORT_CTRL_HEADER;
	else
		header = 0;

	FUNC2(priv, FUNC0(port),
		   AR8216_PORT_CTRL_LEARN | AR8216_PORT_CTRL_VLAN_MODE |
		   AR8216_PORT_CTRL_SINGLE_VLAN | AR8216_PORT_CTRL_STATE |
		   AR8216_PORT_CTRL_HEADER | AR8216_PORT_CTRL_LEARN_LOCK,
		   AR8216_PORT_CTRL_LEARN | header |
		   (egress << AR8216_PORT_CTRL_VLAN_MODE_S) |
		   (AR8216_PORT_STATE_FORWARD << AR8216_PORT_CTRL_STATE_S));

	FUNC2(priv, FUNC1(port),
		   AR8216_PORT_VLAN_DEST_PORTS | AR8216_PORT_VLAN_MODE |
		   AR8216_PORT_VLAN_DEFAULT_ID,
		   (members << AR8216_PORT_VLAN_DEST_PORTS_S) |
		   (ingress << AR8216_PORT_VLAN_MODE_S) |
		   (pvid << AR8216_PORT_VLAN_DEFAULT_ID_S));
}