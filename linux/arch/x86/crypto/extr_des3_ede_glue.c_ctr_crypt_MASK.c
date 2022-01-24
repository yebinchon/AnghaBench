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
struct skcipher_walk {unsigned int nbytes; } ;
struct skcipher_request {int dummy; } ;
struct des3_ede_x86_ctx {int dummy; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 unsigned int DES3_EDE_BLOCK_SIZE ; 
 unsigned int FUNC0 (struct des3_ede_x86_ctx*,struct skcipher_walk*) ; 
 struct des3_ede_x86_ctx* FUNC1 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC2 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct des3_ede_x86_ctx*,struct skcipher_walk*) ; 
 int FUNC4 (struct skcipher_walk*,unsigned int) ; 
 int FUNC5 (struct skcipher_walk*,struct skcipher_request*,int) ; 

__attribute__((used)) static int FUNC6(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC2(req);
	struct des3_ede_x86_ctx *ctx = FUNC1(tfm);
	struct skcipher_walk walk;
	unsigned int nbytes;
	int err;

	err = FUNC5(&walk, req, false);

	while ((nbytes = walk.nbytes) >= DES3_EDE_BLOCK_SIZE) {
		nbytes = FUNC0(ctx, &walk);
		err = FUNC4(&walk, nbytes);
	}

	if (nbytes) {
		FUNC3(ctx, &walk);
		err = FUNC4(&walk, 0);
	}

	return err;
}