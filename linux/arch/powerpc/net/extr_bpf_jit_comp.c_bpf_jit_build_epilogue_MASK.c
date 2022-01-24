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
typedef  int /*<<< orphan*/  u32 ;
struct codegen_context {int seen; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_PPC_STACKFRAME ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int PPC_LR_STKOFF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int REG_SZ ; 
 int SEEN_DATAREF ; 
 int SEEN_MEM ; 
 int r_D ; 
 int r_HL ; 
 int r_M ; 

__attribute__((used)) static void FUNC4(u32 *image, struct codegen_context *ctx)
{
	int i;

	if (ctx->seen & (SEEN_MEM | SEEN_DATAREF)) {
		FUNC0(1, 1, BPF_PPC_STACKFRAME);
		if (ctx->seen & SEEN_DATAREF) {
			FUNC2(0, 1, PPC_LR_STKOFF);
			FUNC3(0);
			FUNC2(r_D, 1, -(REG_SZ*(32-r_D)));
			FUNC2(r_HL, 1, -(REG_SZ*(32-r_HL)));
		}
		if (ctx->seen & SEEN_MEM) {
			/* Restore any saved non-vol registers */
			for (i = r_M; i < (r_M+16); i++) {
				if (ctx->seen & (1 << (i-r_M)))
					FUNC2(i, 1, -(REG_SZ*(32-i)));
			}
		}
	}
	/* The RETs have left a return value in R3. */

	FUNC1();
}