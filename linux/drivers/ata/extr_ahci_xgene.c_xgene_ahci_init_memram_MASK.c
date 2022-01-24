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
struct xgene_ahci_context {int /*<<< orphan*/  dev; scalar_t__ csr_diag; } ;

/* Variables and functions */
 scalar_t__ BLOCK_MEM_RDY ; 
 scalar_t__ CFG_MEM_RAM_SHUTDOWN ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct xgene_ahci_context *ctx)
{
	FUNC0(ctx->dev, "Release memory from shutdown\n");
	FUNC4(0x0, ctx->csr_diag + CFG_MEM_RAM_SHUTDOWN);
	FUNC3(ctx->csr_diag + CFG_MEM_RAM_SHUTDOWN); /* Force a barrier */
	FUNC2(1);	/* reset may take up to 1ms */
	if (FUNC3(ctx->csr_diag + BLOCK_MEM_RDY) != 0xFFFFFFFF) {
		FUNC1(ctx->dev, "failed to release memory from shutdown\n");
		return -ENODEV;
	}
	return 0;
}