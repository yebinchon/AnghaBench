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
struct TYPE_8__ {scalar_t__ addr; } ;
struct TYPE_5__ {TYPE_4__ virt; } ;
struct TYPE_6__ {scalar_t__ addr; } ;
struct TYPE_7__ {TYPE_2__ virt; } ;
struct skcipher_walk {unsigned int nbytes; TYPE_1__ dst; TYPE_3__ src; } ;
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_cipher {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct skcipher_request*,struct skcipher_walk*,struct crypto_cipher*) ; 
 unsigned int FUNC1 (struct skcipher_request*,struct skcipher_walk*,struct crypto_cipher*) ; 
 struct crypto_skcipher* FUNC2 (struct skcipher_request*) ; 
 struct crypto_cipher* FUNC3 (struct crypto_skcipher*) ; 
 int FUNC4 (struct skcipher_walk*,unsigned int) ; 
 int FUNC5 (struct skcipher_walk*,struct skcipher_request*,int) ; 

__attribute__((used)) static int FUNC6(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC2(req);
	struct crypto_cipher *cipher = FUNC3(tfm);
	struct skcipher_walk walk;
	unsigned int nbytes;
	int err;

	err = FUNC5(&walk, req, false);

	while ((nbytes = walk.nbytes)) {
		if (walk.src.virt.addr == walk.dst.virt.addr)
			nbytes = FUNC0(req, &walk,
							     cipher);
		else
			nbytes = FUNC1(req, &walk,
							     cipher);
		err = FUNC4(&walk, nbytes);
	}

	return err;
}