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
struct jit_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_FP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct jit_ctx*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static s8 FUNC4(s8 reg, s8 tmp, struct jit_ctx *ctx)
{
	if (FUNC3(reg)) {
		FUNC2(FUNC0(tmp, ARM_FP, FUNC1(reg)), ctx);
		reg = tmp;
	}
	return reg;
}