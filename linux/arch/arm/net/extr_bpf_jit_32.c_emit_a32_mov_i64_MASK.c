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
typedef  int u64 ;
typedef  int u32 ;
struct jit_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  s8 ;

/* Variables and functions */
 size_t TMP_REG_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,struct jit_ctx*) ; 
 int /*<<< orphan*/ ** bpf2a32 ; 
 int /*<<< orphan*/  dst_lo ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int,struct jit_ctx*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const s8 dst[], u64 val, struct jit_ctx *ctx)
{
	const s8 *tmp = bpf2a32[TMP_REG_1];
	const s8 *rd = FUNC2(dst_lo) ? tmp : dst;

	FUNC1(rd[1], (u32)val, ctx);
	FUNC1(rd[0], val >> 32, ctx);

	FUNC0(dst, rd, ctx);
}