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
typedef  int /*<<< orphan*/  u128 ;
struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int nbytes; scalar_t__ iv; TYPE_4__ dst; TYPE_2__ src; } ;
struct skcipher_request {int dummy; } ;
typedef  int /*<<< orphan*/  (* common_glue_func_t ) (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct skcipher_request*) ; 
 int FUNC2 (struct skcipher_walk*,unsigned int) ; 
 int FUNC3 (struct skcipher_walk*,struct skcipher_request*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int FUNC5(const common_glue_func_t fn,
				struct skcipher_request *req)
{
	void *ctx = FUNC0(FUNC1(req));
	const unsigned int bsize = 128 / 8;
	struct skcipher_walk walk;
	unsigned int nbytes;
	int err;

	err = FUNC3(&walk, req, false);

	while ((nbytes = walk.nbytes)) {
		const u128 *src = (u128 *)walk.src.virt.addr;
		u128 *dst = (u128 *)walk.dst.virt.addr;
		u128 *iv = (u128 *)walk.iv;

		do {
			FUNC4(dst, src, iv);
			fn(ctx, (u8 *)dst, (u8 *)dst);
			iv = dst;
			src++;
			dst++;
			nbytes -= bsize;
		} while (nbytes >= bsize);

		*(u128 *)walk.iv = *iv;
		err = FUNC2(&walk, nbytes);
	}
	return err;
}