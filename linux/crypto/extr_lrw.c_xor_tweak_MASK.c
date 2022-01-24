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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {int nbytes; unsigned int total; TYPE_4__ dst; TYPE_2__ src; scalar_t__ iv; } ;
struct skcipher_request {int dummy; } ;
struct rctx {struct skcipher_request subreq; int /*<<< orphan*/  t; } ;
struct priv {int /*<<< orphan*/ * mulinc; } ;
struct crypto_skcipher {int dummy; } ;
typedef  int /*<<< orphan*/  be128 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int LRW_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct priv* FUNC3 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC4 (struct skcipher_request*) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 struct rctx* FUNC6 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct skcipher_request*,struct crypto_skcipher*) ; 
 int FUNC8 (struct skcipher_walk*,unsigned int) ; 
 int FUNC9 (struct skcipher_walk*,struct skcipher_request*,int) ; 

__attribute__((used)) static int FUNC10(struct skcipher_request *req, bool second_pass)
{
	const int bs = LRW_BLOCK_SIZE;
	struct crypto_skcipher *tfm = FUNC4(req);
	struct priv *ctx = FUNC3(tfm);
	struct rctx *rctx = FUNC6(req);
	be128 t = rctx->t;
	struct skcipher_walk w;
	__be32 *iv;
	u32 counter[4];
	int err;

	if (second_pass) {
		req = &rctx->subreq;
		/* set to our TFM to enforce correct alignment: */
		FUNC7(req, tfm);
	}

	err = FUNC9(&w, req, false);
	if (err)
		return err;

	iv = (__be32 *)w.iv;
	counter[0] = FUNC1(iv[3]);
	counter[1] = FUNC1(iv[2]);
	counter[2] = FUNC1(iv[1]);
	counter[3] = FUNC1(iv[0]);

	while (w.nbytes) {
		unsigned int avail = w.nbytes;
		be128 *wsrc;
		be128 *wdst;

		wsrc = w.src.virt.addr;
		wdst = w.dst.virt.addr;

		do {
			FUNC0(wdst++, &t, wsrc++);

			/* T <- I*Key2, using the optimization
			 * discussed in the specification */
			FUNC0(&t, &t, &ctx->mulinc[FUNC5(counter)]);
		} while ((avail -= bs) >= bs);

		if (second_pass && w.nbytes == w.total) {
			iv[0] = FUNC2(counter[3]);
			iv[1] = FUNC2(counter[2]);
			iv[2] = FUNC2(counter[1]);
			iv[3] = FUNC2(counter[0]);
		}

		err = FUNC8(&w, avail);
	}

	return err;
}