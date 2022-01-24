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
struct alchemy_pci_context {int wired_entry; scalar_t__ regs; int /*<<< orphan*/ * pm; } ;

/* Variables and functions */
 scalar_t__ PCI_REG_B2BBASE0_VID ; 
 scalar_t__ PCI_REG_B2BBASE1_SID ; 
 scalar_t__ PCI_REG_B2BMASK_CCH ; 
 scalar_t__ PCI_REG_CLASSREV ; 
 scalar_t__ PCI_REG_CMEM ; 
 scalar_t__ PCI_REG_CONFIG ; 
 scalar_t__ PCI_REG_ID ; 
 scalar_t__ PCI_REG_MBAR ; 
 scalar_t__ PCI_REG_MWBASE_REV_CCL ; 
 scalar_t__ PCI_REG_MWMASK_DEV ; 
 scalar_t__ PCI_REG_PARAM ; 
 scalar_t__ PCI_REG_TIMEOUT ; 
 struct alchemy_pci_context* __alchemy_pci_ctx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct alchemy_pci_context*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(void)
{
	struct alchemy_pci_context *ctx = __alchemy_pci_ctx;
	if (!ctx)
		return;

	FUNC0(ctx->pm[0],  ctx->regs + PCI_REG_CMEM);
	FUNC0(ctx->pm[2],  ctx->regs + PCI_REG_B2BMASK_CCH);
	FUNC0(ctx->pm[3],  ctx->regs + PCI_REG_B2BBASE0_VID);
	FUNC0(ctx->pm[4],  ctx->regs + PCI_REG_B2BBASE1_SID);
	FUNC0(ctx->pm[5],  ctx->regs + PCI_REG_MWMASK_DEV);
	FUNC0(ctx->pm[6],  ctx->regs + PCI_REG_MWBASE_REV_CCL);
	FUNC0(ctx->pm[7],  ctx->regs + PCI_REG_ID);
	FUNC0(ctx->pm[8],  ctx->regs + PCI_REG_CLASSREV);
	FUNC0(ctx->pm[9],  ctx->regs + PCI_REG_PARAM);
	FUNC0(ctx->pm[10], ctx->regs + PCI_REG_MBAR);
	FUNC0(ctx->pm[11], ctx->regs + PCI_REG_TIMEOUT);
	FUNC2();
	FUNC0(ctx->pm[1],  ctx->regs + PCI_REG_CONFIG);
	FUNC2();

	/* YAMON on all db1xxx boards wipes the TLB and writes zero to C0_wired
	 * on resume, making it necessary to recreate it as soon as possible.
	 */
	ctx->wired_entry = 8191;	/* impossibly high value */
	FUNC1(ctx);	/* install it */
}