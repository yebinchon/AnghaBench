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
typedef  int /*<<< orphan*/  const u8 ;
struct TYPE_7__ {int /*<<< orphan*/  const* addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int /*<<< orphan*/  const* addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int const nbytes; int /*<<< orphan*/  const* const iv; TYPE_4__ src; TYPE_2__ dst; } ;
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_cipher {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct crypto_cipher*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_cipher*,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const* const) ; 
 struct crypto_skcipher* FUNC2 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const* const,unsigned int const) ; 
 struct crypto_cipher* FUNC4 (struct crypto_skcipher*) ; 
 int FUNC5 (struct skcipher_walk*,unsigned int) ; 
 int FUNC6 (struct skcipher_walk*,struct skcipher_request*,int) ; 

__attribute__((used)) static int FUNC7(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC2(req);
	struct crypto_cipher *cipher = FUNC4(tfm);
	const unsigned int bsize = FUNC0(cipher);
	struct skcipher_walk walk;
	int err;

	err = FUNC6(&walk, req, false);

	while (walk.nbytes >= bsize) {
		const u8 *src = walk.src.virt.addr;
		u8 *dst = walk.dst.virt.addr;
		u8 * const iv = walk.iv;
		unsigned int nbytes = walk.nbytes;

		do {
			FUNC1(cipher, iv, iv);
			FUNC3(dst, src, iv, bsize);
			dst += bsize;
			src += bsize;
		} while ((nbytes -= bsize) >= bsize);

		err = FUNC5(&walk, nbytes);
	}

	if (walk.nbytes) {
		FUNC1(cipher, walk.iv, walk.iv);
		FUNC3(walk.dst.virt.addr, walk.src.virt.addr, walk.iv,
			       walk.nbytes);
		err = FUNC5(&walk, 0);
	}
	return err;
}