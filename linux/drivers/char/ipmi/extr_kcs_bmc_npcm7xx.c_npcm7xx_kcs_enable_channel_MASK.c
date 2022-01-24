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
struct npcm7xx_kcs_bmc {TYPE_1__* reg; int /*<<< orphan*/  map; } ;
struct kcs_bmc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ie; int /*<<< orphan*/  ctl; } ;

/* Variables and functions */
 int KCS_CTL_IBFIE ; 
 int KCS_IE_HIRQE ; 
 int KCS_IE_IRQE ; 
 struct npcm7xx_kcs_bmc* FUNC0 (struct kcs_bmc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(struct kcs_bmc *kcs_bmc, bool enable)
{
	struct npcm7xx_kcs_bmc *priv = FUNC0(kcs_bmc);

	FUNC1(priv->map, priv->reg->ctl, KCS_CTL_IBFIE,
			   enable ? KCS_CTL_IBFIE : 0);

	FUNC1(priv->map, priv->reg->ie, KCS_IE_IRQE | KCS_IE_HIRQE,
			   enable ? KCS_IE_IRQE | KCS_IE_HIRQE : 0);
}