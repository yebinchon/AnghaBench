#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_4__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int nbytes; int /*<<< orphan*/ * iv; TYPE_2__ src; } ;
struct skcipher_request {int dummy; } ;
struct crypto_cipher {int dummy; } ;

/* Variables and functions */
 int MAX_CIPHER_BLOCKSIZE ; 
 int FUNC0 (struct crypto_cipher*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_cipher*,int /*<<< orphan*/ *,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct skcipher_request *req,
				       struct skcipher_walk *walk,
				       struct crypto_cipher *tfm)
{
	int bsize = FUNC0(tfm);
	unsigned int nbytes = walk->nbytes;
	u8 *src = walk->src.virt.addr;
	u8 * const iv = walk->iv;
	u8 tmpbuf[MAX_CIPHER_BLOCKSIZE];

	do {
		FUNC4(tmpbuf, src, bsize);
		FUNC2(iv, src, bsize);
		FUNC1(tfm, src, iv);
		FUNC3(iv, tmpbuf, src, bsize);

		src += bsize;
	} while ((nbytes -= bsize) >= bsize);

	return nbytes;
}