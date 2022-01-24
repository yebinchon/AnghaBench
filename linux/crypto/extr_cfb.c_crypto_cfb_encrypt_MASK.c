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
struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int nbytes; TYPE_4__ dst; TYPE_2__ src; } ;
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct crypto_skcipher*) ; 
 int FUNC1 (struct skcipher_walk*,struct crypto_skcipher*) ; 
 int FUNC2 (struct skcipher_walk*,struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC3 (struct skcipher_walk*,struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC4 (struct skcipher_request*) ; 
 int FUNC5 (struct skcipher_walk*,int) ; 
 int FUNC6 (struct skcipher_walk*,struct skcipher_request*,int) ; 

__attribute__((used)) static int FUNC7(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC4(req);
	struct skcipher_walk walk;
	unsigned int bsize = FUNC0(tfm);
	int err;

	err = FUNC6(&walk, req, false);

	while (walk.nbytes >= bsize) {
		if (walk.src.virt.addr == walk.dst.virt.addr)
			err = FUNC1(&walk, tfm);
		else
			err = FUNC2(&walk, tfm);
		err = FUNC5(&walk, err);
	}

	if (walk.nbytes) {
		FUNC3(&walk, tfm);
		err = FUNC5(&walk, 0);
	}

	return err;
}