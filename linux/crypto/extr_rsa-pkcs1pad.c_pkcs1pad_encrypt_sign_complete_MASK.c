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
struct TYPE_2__ {unsigned int dst_len; } ;
struct pkcs1pad_request {int /*<<< orphan*/  in_buf; TYPE_1__ child_req; } ;
struct pkcs1pad_ctx {unsigned int key_size; } ;
struct crypto_akcipher {int dummy; } ;
struct akcipher_request {unsigned int dst_len; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct pkcs1pad_request* FUNC0 (struct akcipher_request*) ; 
 struct pkcs1pad_ctx* FUNC1 (struct crypto_akcipher*) ; 
 struct crypto_akcipher* FUNC2 (struct akcipher_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct akcipher_request *req, int err)
{
	struct crypto_akcipher *tfm = FUNC2(req);
	struct pkcs1pad_ctx *ctx = FUNC1(tfm);
	struct pkcs1pad_request *req_ctx = FUNC0(req);
	unsigned int pad_len;
	unsigned int len;
	u8 *out_buf;

	if (err)
		goto out;

	len = req_ctx->child_req.dst_len;
	pad_len = ctx->key_size - len;

	/* Four billion to one */
	if (FUNC6(!pad_len))
		goto out;

	out_buf = FUNC4(ctx->key_size, GFP_KERNEL);
	err = -ENOMEM;
	if (!out_buf)
		goto out;

	FUNC8(req->dst, FUNC9(req->dst, len),
			  out_buf + pad_len, len);
	FUNC7(req->dst,
			    FUNC9(req->dst, ctx->key_size),
			    out_buf, ctx->key_size);
	FUNC5(out_buf);

out:
	req->dst_len = ctx->key_size;

	FUNC3(req_ctx->in_buf);

	return err;
}