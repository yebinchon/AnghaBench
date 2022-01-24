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
struct skcipher_walk {unsigned int const nbytes; } ;
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct crypto_skcipher*) ; 
 int FUNC1 (struct skcipher_walk*,struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC2 (struct skcipher_walk*,struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC3 (struct skcipher_request*) ; 
 int FUNC4 (struct skcipher_walk*,int) ; 
 int FUNC5 (struct skcipher_walk*,struct skcipher_request*,int) ; 

__attribute__((used)) static int FUNC6(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC3(req);
	struct skcipher_walk walk;
	const unsigned int bsize = FUNC0(tfm);
	int err;

	err = FUNC5(&walk, req, false);

	while (walk.nbytes >= bsize) {
		err = FUNC1(&walk, tfm);
		err = FUNC4(&walk, err);
	}

	if (walk.nbytes) {
		FUNC2(&walk, tfm);
		err = FUNC4(&walk, 0);
	}

	return err;
}