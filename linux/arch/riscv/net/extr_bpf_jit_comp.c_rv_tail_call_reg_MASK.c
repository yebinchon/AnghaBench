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
typedef  int /*<<< orphan*/  u8 ;
struct rv_jit_context {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  RV_CTX_F_SEEN_S6 ; 
 int /*<<< orphan*/  RV_REG_A6 ; 
 int /*<<< orphan*/  RV_REG_S6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rv_jit_context*) ; 
 scalar_t__ FUNC2 (struct rv_jit_context*) ; 

__attribute__((used)) static u8 FUNC3(struct rv_jit_context *ctx)
{
	FUNC1(ctx);

	if (FUNC2(ctx)) {
		FUNC0(RV_CTX_F_SEEN_S6, &ctx->flags);
		return RV_REG_S6;
	}
	return RV_REG_A6;
}