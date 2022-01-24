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

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int XCC ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct jit_ctx*) ; 

__attribute__((used)) static void FUNC3(unsigned int br_opc, unsigned int from_idx, unsigned int to_idx,
			struct jit_ctx *ctx)
{
	unsigned int off = to_idx - from_idx;

	if (br_opc & XCC)
		FUNC2(br_opc | FUNC0(off << 2), ctx);
	else
		FUNC2(br_opc | FUNC1(off << 2), ctx);
}