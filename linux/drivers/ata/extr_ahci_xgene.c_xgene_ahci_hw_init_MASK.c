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
struct xgene_ahci_context {int /*<<< orphan*/  dev; scalar_t__ csr_core; scalar_t__ csr_axi; } ;
struct ahci_host_priv {scalar_t__ mmio; struct xgene_ahci_context* plat_data; } ;

/* Variables and functions */
 scalar_t__ BUSCTLREG ; 
 scalar_t__ ERRINTSTATUSMASK ; 
 scalar_t__ HOST_IRQ_STAT ; 
 scalar_t__ INTSTATUSMASK ; 
 scalar_t__ INT_SLV_TMOMASK ; 
 scalar_t__ IOFMSTRWAUX ; 
 int MAX_AHCI_CHN_PERCTR ; 
 scalar_t__ MSTRDERRATTRIBUTES ; 
 scalar_t__ MSTWRERRATTRIBUTES ; 
 scalar_t__ SLVRDERRATTRIBUTES ; 
 scalar_t__ SLVWRERRATTRIBUTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int FUNC3 (struct xgene_ahci_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgene_ahci_context*,int) ; 

__attribute__((used)) static int FUNC5(struct ahci_host_priv *hpriv)
{
	struct xgene_ahci_context *ctx = hpriv->plat_data;
	int i;
	int rc;
	u32 val;

	/* Remove IP RAM out of shutdown */
	rc = FUNC3(ctx);
	if (rc)
		return rc;

	for (i = 0; i < MAX_AHCI_CHN_PERCTR; i++)
		FUNC4(ctx, i);

	/* AXI disable Mask */
	FUNC2(0xffffffff, hpriv->mmio + HOST_IRQ_STAT);
	FUNC1(hpriv->mmio + HOST_IRQ_STAT); /* Force a barrier */
	FUNC2(0, ctx->csr_core + INTSTATUSMASK);
	val = FUNC1(ctx->csr_core + INTSTATUSMASK); /* Force a barrier */
	FUNC0(ctx->dev, "top level interrupt mask 0x%X value 0x%08X\n",
		INTSTATUSMASK, val);

	FUNC2(0x0, ctx->csr_core + ERRINTSTATUSMASK);
	FUNC1(ctx->csr_core + ERRINTSTATUSMASK); /* Force a barrier */
	FUNC2(0x0, ctx->csr_axi + INT_SLV_TMOMASK);
	FUNC1(ctx->csr_axi + INT_SLV_TMOMASK);

	/* Enable AXI Interrupt */
	FUNC2(0xffffffff, ctx->csr_core + SLVRDERRATTRIBUTES);
	FUNC2(0xffffffff, ctx->csr_core + SLVWRERRATTRIBUTES);
	FUNC2(0xffffffff, ctx->csr_core + MSTRDERRATTRIBUTES);
	FUNC2(0xffffffff, ctx->csr_core + MSTWRERRATTRIBUTES);

	/* Enable coherency */
	val = FUNC1(ctx->csr_core + BUSCTLREG);
	val &= ~0x00000002;     /* Enable write coherency */
	val &= ~0x00000001;     /* Enable read coherency */
	FUNC2(val, ctx->csr_core + BUSCTLREG);

	val = FUNC1(ctx->csr_core + IOFMSTRWAUX);
	val |= (1 << 3);        /* Enable read coherency */
	val |= (1 << 9);        /* Enable write coherency */
	FUNC2(val, ctx->csr_core + IOFMSTRWAUX);
	val = FUNC1(ctx->csr_core + IOFMSTRWAUX);
	FUNC0(ctx->dev, "coherency 0x%X value 0x%08X\n",
		IOFMSTRWAUX, val);

	return rc;
}