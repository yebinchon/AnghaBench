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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int nbytes; TYPE_4__ dst; TYPE_2__ src; } ;
struct skcipher_request {int dummy; } ;

/* Variables and functions */
 unsigned int DES3_EDE_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct skcipher_walk*,unsigned int) ; 
 int FUNC3 (struct skcipher_walk*,struct skcipher_request*,int) ; 

__attribute__((used)) static int FUNC4(struct skcipher_request *req, const u32 *expkey)
{
	const unsigned int bsize = DES3_EDE_BLOCK_SIZE;
	struct skcipher_walk walk;
	unsigned int nbytes;
	int err;

	err = FUNC3(&walk, req, false);

	while ((nbytes = walk.nbytes)) {
		u8 *wsrc = walk.src.virt.addr;
		u8 *wdst = walk.dst.virt.addr;

		/* Process four block batch */
		if (nbytes >= bsize * 3) {
			do {
				FUNC1(expkey, wdst,
							       wsrc);

				wsrc += bsize * 3;
				wdst += bsize * 3;
				nbytes -= bsize * 3;
			} while (nbytes >= bsize * 3);

			if (nbytes < bsize)
				goto done;
		}

		/* Handle leftovers */
		do {
			FUNC0(expkey, wdst, wsrc);

			wsrc += bsize;
			wdst += bsize;
			nbytes -= bsize;
		} while (nbytes >= bsize);

done:
		err = FUNC2(&walk, nbytes);
	}

	return err;
}