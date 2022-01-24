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
 int AR8216_PORT_CPU ; 
 int AR8216_PORT_CTRL_LEARN ; 
 int AR8216_PORT_CTRL_STATE_S ; 
 int AR8216_PORT_SPEED_1000M ; 
 int AR8216_PORT_SPEED_100M ; 
 int AR8216_PORT_STATUS_DUPLEX ; 
 int AR8216_PORT_STATUS_LINK_AUTO ; 
 int AR8216_PORT_STATUS_LINK_UP ; 
 int AR8216_PORT_STATUS_RXFLOW ; 
 int AR8216_PORT_STATUS_RXMAC ; 
 int AR8216_PORT_STATUS_TXFLOW ; 
 int AR8216_PORT_STATUS_TXMAC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct ar8xxx_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct ar8xxx_priv*) ; 

__attribute__((used)) static void
FUNC6(struct ar8xxx_priv *priv, int port)
{
	/* Enable port learning and tx */
	FUNC4(priv, FUNC0(port),
		AR8216_PORT_CTRL_LEARN |
		(4 << AR8216_PORT_CTRL_STATE_S));

	FUNC4(priv, FUNC2(port), 0);

	if (port == AR8216_PORT_CPU) {
		FUNC4(priv, FUNC1(port),
			AR8216_PORT_STATUS_LINK_UP |
			(FUNC3(priv) ?
                                AR8216_PORT_SPEED_1000M : AR8216_PORT_SPEED_100M) |
			AR8216_PORT_STATUS_TXMAC |
			AR8216_PORT_STATUS_RXMAC |
			(FUNC5(priv) ? AR8216_PORT_STATUS_RXFLOW : 0) |
			(FUNC5(priv) ? AR8216_PORT_STATUS_TXFLOW : 0) |
			AR8216_PORT_STATUS_DUPLEX);
	} else {
		FUNC4(priv, FUNC1(port),
			AR8216_PORT_STATUS_LINK_AUTO);
	}
}