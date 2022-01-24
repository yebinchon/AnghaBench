#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct rt305x_esw {int reg_initval_fct2; int reg_initval_fpa2; int port_disable; int reg_led_polarity; int port_map; int /*<<< orphan*/  swdev; TYPE_1__* ports; } ;
struct TYPE_2__ {int disable; int led; } ;

/* Variables and functions */
 int BMCR_ANENABLE ; 
 int BMCR_FULLDPLX ; 
 int BMCR_PDOWN ; 
 int BMCR_SPEED100 ; 
 int MII_BMCR ; 
 scalar_t__ MT762X_SOC_MT7628AN ; 
 scalar_t__ MT762X_SOC_MT7688 ; 
 int RT305X_ESW_NUM_LEDS ; 
 int RT305X_ESW_PFC1_EN_VLAN_S ; 
 int RT305X_ESW_PMAP_LLLLLL ; 
 int RT305X_ESW_POC0_EN_BP_S ; 
 int RT305X_ESW_POC0_EN_FC_S ; 
 int RT305X_ESW_POC2_ENAGING_S ; 
 int RT305X_ESW_POC2_UNTAG_EN_S ; 
 int RT305X_ESW_PORTS_ALL ; 
 int RT305X_ESW_PORTS_CPU ; 
 int RT305X_ESW_PORTS_NOCPU ; 
 int RT305X_ESW_PORT_ST_CHG ; 
 int /*<<< orphan*/  RT305X_ESW_REG_FCT0 ; 
 int /*<<< orphan*/  RT305X_ESW_REG_FCT2 ; 
 int /*<<< orphan*/  RT305X_ESW_REG_FPA ; 
 int /*<<< orphan*/  RT305X_ESW_REG_FPA2 ; 
 int /*<<< orphan*/  RT305X_ESW_REG_IMR ; 
 int /*<<< orphan*/  RT305X_ESW_REG_P0LED ; 
 int /*<<< orphan*/  RT305X_ESW_REG_P1LED ; 
 int /*<<< orphan*/  RT305X_ESW_REG_P2LED ; 
 int /*<<< orphan*/  RT305X_ESW_REG_P3LED ; 
 int /*<<< orphan*/  RT305X_ESW_REG_P4LED ; 
 int /*<<< orphan*/  RT305X_ESW_REG_PFC1 ; 
 int /*<<< orphan*/  RT305X_ESW_REG_POC0 ; 
 int /*<<< orphan*/  RT305X_ESW_REG_POC2 ; 
 int /*<<< orphan*/  RT305X_ESW_REG_SGC ; 
 int /*<<< orphan*/  RT305X_ESW_REG_SGC2 ; 
 int /*<<< orphan*/  RT305X_ESW_REG_SOCPC ; 
 int RT305X_ESW_SGC2_LAN_PMAP_M ; 
 int RT305X_ESW_SGC2_LAN_PMAP_S ; 
 int RT305X_ESW_SOCPC_CRC_PADDING ; 
 int RT305X_ESW_SOCPC_DISBC2CPU_S ; 
 int RT305X_ESW_SOCPC_DISMC2CPU_S ; 
 int RT305X_ESW_SOCPC_DISUN2CPU_S ; 
 scalar_t__ RT305X_SOC_RT3352 ; 
 scalar_t__ RT305X_SOC_RT5350 ; 
 int /*<<< orphan*/  RT5350_EWS_REG_LED_POLARITY ; 
 int /*<<< orphan*/  RT5350_RESET_EPHY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct rt305x_esw*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt305x_esw*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt305x_esw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ ralink_soc ; 
 int /*<<< orphan*/  FUNC5 (struct rt305x_esw*,int,int,int) ; 

__attribute__((used)) static void FUNC6(struct rt305x_esw *esw)
{
	int i;
	u8 port_disable = 0;
	u8 port_map = RT305X_ESW_PMAP_LLLLLL;

	/* vodoo from original driver */
	FUNC3(esw, 0xC8A07850, RT305X_ESW_REG_FCT0);
	FUNC3(esw, 0x00000000, RT305X_ESW_REG_SGC2);
	/* Port priority 1 for all ports, vlan enabled. */
	FUNC3(esw, 0x00005555 |
		     (RT305X_ESW_PORTS_ALL << RT305X_ESW_PFC1_EN_VLAN_S),
		RT305X_ESW_REG_PFC1);

	/* Enable all ports, Back Pressure and Flow Control */
	FUNC3(esw, ((RT305X_ESW_PORTS_ALL << RT305X_ESW_POC0_EN_BP_S) |
		      (RT305X_ESW_PORTS_ALL << RT305X_ESW_POC0_EN_FC_S)),
		RT305X_ESW_REG_POC0);

	/* Enable Aging, and VLAN TAG removal */
	FUNC3(esw, ((RT305X_ESW_PORTS_ALL << RT305X_ESW_POC2_ENAGING_S) |
		      (RT305X_ESW_PORTS_NOCPU << RT305X_ESW_POC2_UNTAG_EN_S)),
		RT305X_ESW_REG_POC2);

	if (esw->reg_initval_fct2)
		FUNC3(esw, esw->reg_initval_fct2, RT305X_ESW_REG_FCT2);
	else
		FUNC3(esw, 0x0002500c, RT305X_ESW_REG_FCT2);

	/* 300s aging timer, max packet len 1536, broadcast storm prevention
	 * disabled, disable collision abort, mac xor48 hash, 10 packet back
	 * pressure jam, GMII disable was_transmit, back pressure disabled,
	 * 30ms led flash, unmatched IGMP as broadcast, rmc tb fault to all
	 * ports.
	 */
	FUNC3(esw, 0x0008a301, RT305X_ESW_REG_SGC);

	/* Setup SoC Port control register */
	FUNC3(esw,
		(RT305X_ESW_SOCPC_CRC_PADDING |
		(RT305X_ESW_PORTS_CPU << RT305X_ESW_SOCPC_DISUN2CPU_S) |
		(RT305X_ESW_PORTS_CPU << RT305X_ESW_SOCPC_DISMC2CPU_S) |
		(RT305X_ESW_PORTS_CPU << RT305X_ESW_SOCPC_DISBC2CPU_S)),
		RT305X_ESW_REG_SOCPC);

	/* ext phy base addr 31, enable port 5 polling, rx/tx clock skew 1,
	 * turbo mii off, rgmi 3.3v off
	 * port5: disabled
	 * port6: enabled, gige, full-duplex, rx/tx-flow-control
	 */
	if (esw->reg_initval_fpa2)
		FUNC3(esw, esw->reg_initval_fpa2, RT305X_ESW_REG_FPA2);
	else
		FUNC3(esw, 0x3f502b28, RT305X_ESW_REG_FPA2);
	FUNC3(esw, 0x00000000, RT305X_ESW_REG_FPA);

	/* Force Link/Activity on ports */
	FUNC3(esw, 0x00000005, RT305X_ESW_REG_P0LED);
	FUNC3(esw, 0x00000005, RT305X_ESW_REG_P1LED);
	FUNC3(esw, 0x00000005, RT305X_ESW_REG_P2LED);
	FUNC3(esw, 0x00000005, RT305X_ESW_REG_P3LED);
	FUNC3(esw, 0x00000005, RT305X_ESW_REG_P4LED);

	/* Copy disabled port configuration from device tree setup */
	port_disable = esw->port_disable;

	/* Disable nonexistent ports by reading the switch config
	 * after having enabled all possible ports above
	 */
	port_disable |= FUNC1(esw);

	for (i = 0; i < 6; i++)
		esw->ports[i].disable = (port_disable & (1 << i)) != 0;

	if (ralink_soc == RT305X_SOC_RT3352) {
		/* reset EPHY */
		FUNC4(RT5350_RESET_EPHY);

		FUNC5(esw, 0, 31, 0x8000);
		for (i = 0; i < 5; i++) {
			if (esw->ports[i].disable) {
				FUNC5(esw, i, MII_BMCR, BMCR_PDOWN);
			} else {
				FUNC5(esw, i, MII_BMCR,
						 BMCR_FULLDPLX |
						 BMCR_ANENABLE |
						 BMCR_SPEED100);
			}
			/* TX10 waveform coefficient LSB=0 disable PHY */
			FUNC5(esw, i, 26, 0x1601);
			/* TX100/TX10 AD/DA current bias */
			FUNC5(esw, i, 29, 0x7016);
			/* TX100 slew rate control */
			FUNC5(esw, i, 30, 0x0038);
		}

		/* select global register */
		FUNC5(esw, 0, 31, 0x0);
		/* enlarge agcsel threshold 3 and threshold 2 */
		FUNC5(esw, 0, 1, 0x4a40);
		/* enlarge agcsel threshold 5 and threshold 4 */
		FUNC5(esw, 0, 2, 0x6254);
		/* enlarge agcsel threshold  */
		FUNC5(esw, 0, 3, 0xa17f);
		FUNC5(esw, 0, 12, 0x7eaa);
		/* longer TP_IDL tail length */
		FUNC5(esw, 0, 14, 0x65);
		/* increased squelch pulse count threshold. */
		FUNC5(esw, 0, 16, 0x0684);
		/* set TX10 signal amplitude threshold to minimum */
		FUNC5(esw, 0, 17, 0x0fe0);
		/* set squelch amplitude to higher threshold */
		FUNC5(esw, 0, 18, 0x40ba);
		/* tune TP_IDL tail and head waveform, enable power
		 * down slew rate control
		 */
		FUNC5(esw, 0, 22, 0x253f);
		/* set PLL/Receive bias current are calibrated */
		FUNC5(esw, 0, 27, 0x2fda);
		/* change PLL/Receive bias current to internal(RT3350) */
		FUNC5(esw, 0, 28, 0xc410);
		/* change PLL bias current to internal(RT3052_MP3) */
		FUNC5(esw, 0, 29, 0x598b);
		/* select local register */
		FUNC5(esw, 0, 31, 0x8000);
	} else if (ralink_soc == RT305X_SOC_RT5350) {
		/* reset EPHY */
		FUNC4(RT5350_RESET_EPHY);

		/* set the led polarity */
		FUNC3(esw, esw->reg_led_polarity & 0x1F,
			RT5350_EWS_REG_LED_POLARITY);

		/* local registers */
		FUNC5(esw, 0, 31, 0x8000);
		for (i = 0; i < 5; i++) {
			if (esw->ports[i].disable) {
				FUNC5(esw, i, MII_BMCR, BMCR_PDOWN);
			} else {
				FUNC5(esw, i, MII_BMCR,
						 BMCR_FULLDPLX |
						 BMCR_ANENABLE |
						 BMCR_SPEED100);
			}
			/* TX10 waveform coefficient LSB=0 disable PHY */
			FUNC5(esw, i, 26, 0x1601);
			/* TX100/TX10 AD/DA current bias */
			FUNC5(esw, i, 29, 0x7015);
			/* TX100 slew rate control */
			FUNC5(esw, i, 30, 0x0038);
		}

		/* global registers */
		FUNC5(esw, 0, 31, 0x0);
		/* enlarge agcsel threshold 3 and threshold 2 */
		FUNC5(esw, 0, 1, 0x4a40);
		/* enlarge agcsel threshold 5 and threshold 4 */
		FUNC5(esw, 0, 2, 0x6254);
		/* enlarge agcsel threshold 6 */
		FUNC5(esw, 0, 3, 0xa17f);
		FUNC5(esw, 0, 12, 0x7eaa);
		/* longer TP_IDL tail length */
		FUNC5(esw, 0, 14, 0x65);
		/* increased squelch pulse count threshold. */
		FUNC5(esw, 0, 16, 0x0684);
		/* set TX10 signal amplitude threshold to minimum */
		FUNC5(esw, 0, 17, 0x0fe0);
		/* set squelch amplitude to higher threshold */
		FUNC5(esw, 0, 18, 0x40ba);
		/* tune TP_IDL tail and head waveform, enable power
		 * down slew rate control
		 */
		FUNC5(esw, 0, 22, 0x253f);
		/* set PLL/Receive bias current are calibrated */
		FUNC5(esw, 0, 27, 0x2fda);
		/* change PLL/Receive bias current to internal(RT3350) */
		FUNC5(esw, 0, 28, 0xc410);
		/* change PLL bias current to internal(RT3052_MP3) */
		FUNC5(esw, 0, 29, 0x598b);
		/* select local register */
		FUNC5(esw, 0, 31, 0x8000);
	} else if (ralink_soc == MT762X_SOC_MT7628AN || ralink_soc == MT762X_SOC_MT7688) {
		int i;

		/* reset EPHY */
		FUNC4(RT5350_RESET_EPHY);

		FUNC5(esw, 0, 31, 0x2000); /* change G2 page */
		FUNC5(esw, 0, 26, 0x0020);

		for (i = 0; i < 5; i++) {
			FUNC5(esw, i, 31, 0x8000);
			FUNC5(esw, i,  0, 0x3100);
			FUNC5(esw, i, 30, 0xa000);
			FUNC5(esw, i, 31, 0xa000);
			FUNC5(esw, i, 16, 0x0606);
			FUNC5(esw, i, 23, 0x0f0e);
			FUNC5(esw, i, 24, 0x1610);
			FUNC5(esw, i, 30, 0x1f15);
			FUNC5(esw, i, 28, 0x6111);
			FUNC5(esw, i, 31, 0x2000);
			FUNC5(esw, i, 26, 0x0000);
		}

		/* 100Base AOI setting */
		FUNC5(esw, 0, 31, 0x5000);
		FUNC5(esw, 0, 19, 0x004a);
		FUNC5(esw, 0, 20, 0x015a);
		FUNC5(esw, 0, 21, 0x00ee);
		FUNC5(esw, 0, 22, 0x0033);
		FUNC5(esw, 0, 23, 0x020a);
		FUNC5(esw, 0, 24, 0x0000);
		FUNC5(esw, 0, 25, 0x024a);
		FUNC5(esw, 0, 26, 0x035a);
		FUNC5(esw, 0, 27, 0x02ee);
		FUNC5(esw, 0, 28, 0x0233);
		FUNC5(esw, 0, 29, 0x000a);
		FUNC5(esw, 0, 30, 0x0000);
	} else {
		FUNC5(esw, 0, 31, 0x8000);
		for (i = 0; i < 5; i++) {
			if (esw->ports[i].disable) {
				FUNC5(esw, i, MII_BMCR, BMCR_PDOWN);
			} else {
				FUNC5(esw, i, MII_BMCR,
						 BMCR_FULLDPLX |
						 BMCR_ANENABLE |
						 BMCR_SPEED100);
			}
			/* TX10 waveform coefficient */
			FUNC5(esw, i, 26, 0x1601);
			/* TX100/TX10 AD/DA current bias */
			FUNC5(esw, i, 29, 0x7058);
			/* TX100 slew rate control */
			FUNC5(esw, i, 30, 0x0018);
		}

		/* PHY IOT */
		/* select global register */
		FUNC5(esw, 0, 31, 0x0);
		/* tune TP_IDL tail and head waveform */
		FUNC5(esw, 0, 22, 0x052f);
		/* set TX10 signal amplitude threshold to minimum */
		FUNC5(esw, 0, 17, 0x0fe0);
		/* set squelch amplitude to higher threshold */
		FUNC5(esw, 0, 18, 0x40ba);
		/* longer TP_IDL tail length */
		FUNC5(esw, 0, 14, 0x65);
		/* select local register */
		FUNC5(esw, 0, 31, 0x8000);
	}

	if (esw->port_map)
		port_map = esw->port_map;
	else
		port_map = RT305X_ESW_PMAP_LLLLLL;

	/* Unused HW feature, but still nice to be consistent here...
	 * This is also exported to userspace ('lan' attribute) so it's
	 * conveniently usable to decide which ports go into the wan vlan by
	 * default.
	 */
	FUNC2(esw, RT305X_ESW_REG_SGC2,
		RT305X_ESW_SGC2_LAN_PMAP_M << RT305X_ESW_SGC2_LAN_PMAP_S,
		port_map << RT305X_ESW_SGC2_LAN_PMAP_S);

	/* make the switch leds blink */
	for (i = 0; i < RT305X_ESW_NUM_LEDS; i++)
		esw->ports[i].led = 0x05;

	/* Apply the empty config. */
	FUNC0(&esw->swdev);

	/* Only unmask the port change interrupt */
	FUNC3(esw, ~RT305X_ESW_PORT_ST_CHG, RT305X_ESW_REG_IMR);
}