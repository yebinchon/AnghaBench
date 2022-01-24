#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mtk_eth {int /*<<< orphan*/  dev; TYPE_2__* foe_table; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; } ;
struct TYPE_4__ {TYPE_1__ bfib1; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FOE_STATE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MTK_PPE_CAH_CTRL_EN ; 
 int MTK_PPE_CAH_CTRL_X_MODE ; 
 int MTK_PPE_ENTRY_CNT ; 
 int MTK_PPE_FLOW_CFG_FMC_FOE ; 
 int MTK_PPE_FLOW_CFG_FUC_FOE ; 
 int MTK_PPE_FLOW_CFG_IPV4_NAPT_EN ; 
 int MTK_PPE_FLOW_CFG_IPV4_NAT_EN ; 
 int MTK_PPE_FLOW_CFG_IPV4_NAT_FRAG_EN ; 
 int MTK_PPE_GLO_CFG_EN ; 
 int MTK_PPE_TB_CFG_FIN_AGE ; 
 int MTK_PPE_TB_CFG_NTU_AGE ; 
 int MTK_PPE_TB_CFG_TCP_AGE ; 
 int MTK_PPE_TB_CFG_UDP_AGE ; 
 int MTK_PPE_TB_CFG_UNBD_AGE ; 
 int /*<<< orphan*/  MTK_REG_PPE_CAH_CTRL ; 
 int /*<<< orphan*/  MTK_REG_PPE_FLOW_CFG ; 
 int /*<<< orphan*/  MTK_REG_PPE_GLO_CFG ; 
 int MTK_REG_PPE_TB_BASE ; 
 int /*<<< orphan*/  MTK_REG_PPE_TB_CFG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_eth*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mtk_eth*) ; 
 int FUNC4 (struct mtk_eth*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_eth*,int,int) ; 

__attribute__((used)) static int FUNC6(struct mtk_eth *eth)
{
	u32 r1 = 0, r2 = 0;
	int i;

	/* discard all traffic while we disable the PPE */
	FUNC2(eth, 0xffff, 0x7777, FUNC0(0));
	FUNC2(eth, 0xffff, 0x7777, FUNC0(1));

	if (FUNC3(eth))
		return -ETIMEDOUT;

	/* invalidate all flow table entries */
	for (i = 0; i < MTK_PPE_ENTRY_CNT; i++)
		eth->foe_table[i].bfib1.state = FOE_STATE_INVALID;

	/* disable caching */
	FUNC2(eth, 0, MTK_PPE_CAH_CTRL_X_MODE, MTK_REG_PPE_CAH_CTRL);
	FUNC2(eth, MTK_PPE_CAH_CTRL_X_MODE | MTK_PPE_CAH_CTRL_EN, 0,
		MTK_REG_PPE_CAH_CTRL);

	/* flush cache has to be ahead of hnat diable --*/
	FUNC2(eth, MTK_PPE_GLO_CFG_EN, 0, MTK_REG_PPE_GLO_CFG);

	/* disable FOE */
	FUNC2(eth,
		MTK_PPE_FLOW_CFG_IPV4_NAT_FRAG_EN |
		MTK_PPE_FLOW_CFG_IPV4_NAPT_EN | MTK_PPE_FLOW_CFG_IPV4_NAT_EN |
		MTK_PPE_FLOW_CFG_FUC_FOE | MTK_PPE_FLOW_CFG_FMC_FOE,
		0, MTK_REG_PPE_FLOW_CFG);

	/* disable FOE aging */
	FUNC2(eth, 0,
		MTK_PPE_TB_CFG_FIN_AGE | MTK_PPE_TB_CFG_UDP_AGE |
		MTK_PPE_TB_CFG_TCP_AGE | MTK_PPE_TB_CFG_UNBD_AGE |
		MTK_PPE_TB_CFG_NTU_AGE, MTK_REG_PPE_TB_CFG);

	r1 = FUNC4(eth, 0x100);
	r2 = FUNC4(eth, 0x10c);

	FUNC1(eth->dev, "0x100 = 0x%x, 0x10c = 0x%x\n", r1, r2);

	if (((r1 & 0xff00) >> 0x8) >= (r1 & 0xff) ||
	    ((r1 & 0xff00) >> 0x8) >= (r2 & 0xff)) {
		FUNC1(eth->dev, "reset pse\n");
		FUNC5(eth, 0x1, 0x4);
	}

	/* set the foe entry base address to 0 */
	FUNC5(eth, 0, MTK_REG_PPE_TB_BASE);

	if (FUNC3(eth))
		return -ETIMEDOUT;

	/* send all traffic back to the DMA engine */
#ifdef CONFIG_RALINK
	mtk_m32(eth, 0xffff, 0x0, MTK_GDMA_FWD_CFG(0));
	mtk_m32(eth, 0xffff, 0x0, MTK_GDMA_FWD_CFG(1));
#else
	FUNC2(eth, 0xffff, 0x5555, FUNC0(0));
	FUNC2(eth, 0xffff, 0x5555, FUNC0(1));
#endif
	return 0;
}