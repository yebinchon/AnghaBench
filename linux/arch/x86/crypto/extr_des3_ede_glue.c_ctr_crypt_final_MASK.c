#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_7__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int nbytes; TYPE_4__ dst; TYPE_2__ src; int /*<<< orphan*/ * iv; } ;
struct des3_ede_x86_ctx {int dummy; } ;

/* Variables and functions */
 int DES3_EDE_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct des3_ede_x86_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct des3_ede_x86_ctx *ctx,
			    struct skcipher_walk *walk)
{
	u8 *ctrblk = walk->iv;
	u8 keystream[DES3_EDE_BLOCK_SIZE];
	u8 *src = walk->src.virt.addr;
	u8 *dst = walk->dst.virt.addr;
	unsigned int nbytes = walk->nbytes;

	FUNC2(ctx, keystream, ctrblk);
	FUNC1(dst, keystream, src, nbytes);

	FUNC0(ctrblk, DES3_EDE_BLOCK_SIZE);
}