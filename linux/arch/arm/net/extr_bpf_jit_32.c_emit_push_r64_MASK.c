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
typedef  int u16 ;
struct jit_ctx {int dummy; } ;
typedef  int s8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t TMP_REG_2 ; 
 int* FUNC1 (int const*,int const*,struct jit_ctx*) ; 
 int** bpf2a32 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct jit_ctx*) ; 

__attribute__((used)) static inline void FUNC3(const s8 src[], struct jit_ctx *ctx)
{
	const s8 *tmp2 = bpf2a32[TMP_REG_2];
	const s8 *rt;
	u16 reg_set = 0;

	rt = FUNC1(src, tmp2, ctx);

	reg_set = (1 << rt[1]) | (1 << rt[0]);
	FUNC2(FUNC0(reg_set), ctx);
}