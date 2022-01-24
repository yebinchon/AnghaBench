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
struct jit_ctx {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct jit_ctx*) ; 

__attribute__((used)) static void FUNC4(u32 opcode, u32 a, u32 b, u32 c, struct jit_ctx *ctx)
{
	FUNC3(opcode | FUNC1(a) | FUNC2(b) | FUNC0(c), ctx);
}