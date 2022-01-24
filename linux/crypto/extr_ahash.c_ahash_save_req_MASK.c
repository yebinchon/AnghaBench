#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct crypto_ahash {int dummy; } ;
struct ahash_request_priv {int flags; scalar_t__ ubuf; struct ahash_request* data; int /*<<< orphan*/  complete; int /*<<< orphan*/  result; } ;
struct TYPE_2__ {int flags; struct ahash_request* data; int /*<<< orphan*/  complete; } ;
struct ahash_request {struct ahash_request_priv* priv; TYPE_1__ base; int /*<<< orphan*/  result; } ;
typedef  int /*<<< orphan*/  crypto_completion_t ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC1 (unsigned int,unsigned long) ; 
 unsigned long FUNC2 (struct crypto_ahash*) ; 
 unsigned int FUNC3 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC4 (struct ahash_request*) ; 
 struct ahash_request_priv* FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ahash_request *req, crypto_completion_t cplt)
{
	struct crypto_ahash *tfm = FUNC4(req);
	unsigned long alignmask = FUNC2(tfm);
	unsigned int ds = FUNC3(tfm);
	struct ahash_request_priv *priv;

	priv = FUNC5(sizeof(*priv) + FUNC1(ds, alignmask),
		       (req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP) ?
		       GFP_KERNEL : GFP_ATOMIC);
	if (!priv)
		return -ENOMEM;

	/*
	 * WARNING: Voodoo programming below!
	 *
	 * The code below is obscure and hard to understand, thus explanation
	 * is necessary. See include/crypto/hash.h and include/linux/crypto.h
	 * to understand the layout of structures used here!
	 *
	 * The code here will replace portions of the ORIGINAL request with
	 * pointers to new code and buffers so the hashing operation can store
	 * the result in aligned buffer. We will call the modified request
	 * an ADJUSTED request.
	 *
	 * The newly mangled request will look as such:
	 *
	 * req {
	 *   .result        = ADJUSTED[new aligned buffer]
	 *   .base.complete = ADJUSTED[pointer to completion function]
	 *   .base.data     = ADJUSTED[*req (pointer to self)]
	 *   .priv          = ADJUSTED[new priv] {
	 *           .result   = ORIGINAL(result)
	 *           .complete = ORIGINAL(base.complete)
	 *           .data     = ORIGINAL(base.data)
	 *   }
	 */

	priv->result = req->result;
	priv->complete = req->base.complete;
	priv->data = req->base.data;
	priv->flags = req->base.flags;

	/*
	 * WARNING: We do not backup req->priv here! The req->priv
	 *          is for internal use of the Crypto API and the
	 *          user must _NOT_ _EVER_ depend on it's content!
	 */

	req->result = FUNC0((u8 *)priv->ubuf, alignmask + 1);
	req->base.complete = cplt;
	req->base.data = req;
	req->priv = priv;

	return 0;
}