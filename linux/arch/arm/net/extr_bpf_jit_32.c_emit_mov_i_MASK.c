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
typedef  int /*<<< orphan*/  u32 ;
struct jit_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct jit_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,struct jit_ctx*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(const u8 rd, u32 val, struct jit_ctx *ctx)
{
	int imm12 = FUNC3(val);

	if (imm12 >= 0)
		FUNC1(FUNC0(rd, imm12), ctx);
	else
		FUNC2(rd, val, ctx);
}