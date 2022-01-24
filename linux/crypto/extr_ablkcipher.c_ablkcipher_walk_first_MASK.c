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
struct crypto_tfm {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  sg; } ;
struct ablkcipher_walk {TYPE_2__ out; TYPE_2__ in; scalar_t__ iv; int /*<<< orphan*/ * iv_buffer; int /*<<< orphan*/  total; int /*<<< orphan*/  nbytes; } ;
struct TYPE_3__ {struct crypto_tfm* tfm; } ;
struct ablkcipher_request {scalar_t__ info; TYPE_1__ base; } ;

/* Variables and functions */
 int EDEADLK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ablkcipher_walk*,struct crypto_tfm*,unsigned int) ; 
 int FUNC2 (struct ablkcipher_request*,struct ablkcipher_walk*) ; 
 unsigned int FUNC3 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (unsigned long) ; 

__attribute__((used)) static int FUNC7(struct ablkcipher_request *req,
				 struct ablkcipher_walk *walk)
{
	struct crypto_tfm *tfm = req->base.tfm;
	unsigned int alignmask;

	alignmask = FUNC3(tfm);
	if (FUNC0(FUNC4()))
		return -EDEADLK;

	walk->iv = req->info;
	walk->nbytes = walk->total;
	if (FUNC6(!walk->total))
		return 0;

	walk->iv_buffer = NULL;
	if (FUNC6(((unsigned long)walk->iv & alignmask))) {
		int err = FUNC1(walk, tfm, alignmask);

		if (err)
			return err;
	}

	FUNC5(&walk->in, walk->in.sg);
	FUNC5(&walk->out, walk->out.sg);

	return FUNC2(req, walk);
}