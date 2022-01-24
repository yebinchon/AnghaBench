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
struct skcipher_walk {scalar_t__ nbytes; } ;
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct skcipher_walk*,struct crypto_skcipher*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  crypto_cbc_decrypt_one ; 
 struct crypto_skcipher* FUNC1 (struct skcipher_request*) ; 
 int FUNC2 (struct skcipher_walk*,int) ; 
 int FUNC3 (struct skcipher_walk*,struct skcipher_request*,int) ; 

__attribute__((used)) static int FUNC4(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC1(req);
	struct skcipher_walk walk;
	int err;

	err = FUNC3(&walk, req, false);

	while (walk.nbytes) {
		err = FUNC0(&walk, tfm,
						crypto_cbc_decrypt_one);
		err = FUNC2(&walk, err);
	}

	return err;
}