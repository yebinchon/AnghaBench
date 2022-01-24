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
struct crypto_skcipher {int dummy; } ;
struct cast5_ctx {int dummy; } ;

/* Variables and functions */
 unsigned int CAST5_BLOCK_SIZE ; 
 unsigned int FUNC0 (struct skcipher_walk*,struct cast5_ctx*) ; 
 int FUNC1 (int,struct skcipher_walk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct cast5_ctx* FUNC3 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC4 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct skcipher_walk*,struct cast5_ctx*) ; 
 int FUNC6 (struct skcipher_walk*,unsigned int) ; 
 int FUNC7 (struct skcipher_walk*,struct skcipher_request*,int) ; 

__attribute__((used)) static int FUNC8(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC4(req);
	struct cast5_ctx *ctx = FUNC3(tfm);
	bool fpu_enabled = false;
	struct skcipher_walk walk;
	unsigned int nbytes;
	int err;

	err = FUNC7(&walk, req, false);

	while ((nbytes = walk.nbytes) >= CAST5_BLOCK_SIZE) {
		fpu_enabled = FUNC1(fpu_enabled, &walk, nbytes);
		nbytes = FUNC0(&walk, ctx);
		err = FUNC6(&walk, nbytes);
	}

	FUNC2(fpu_enabled);

	if (walk.nbytes) {
		FUNC5(&walk, ctx);
		err = FUNC6(&walk, 0);
	}

	return err;
}