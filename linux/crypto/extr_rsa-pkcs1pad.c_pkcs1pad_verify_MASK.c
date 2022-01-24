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
struct pkcs1pad_request {int /*<<< orphan*/  child_req; int /*<<< orphan*/  out_sg; int /*<<< orphan*/  out_buf; } ;
struct pkcs1pad_ctx {scalar_t__ key_size; int /*<<< orphan*/  child; } ;
struct crypto_akcipher {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct akcipher_request {int dst; scalar_t__ dst_len; scalar_t__ src_len; int /*<<< orphan*/  src; TYPE_1__ base; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 struct pkcs1pad_request* FUNC1 (struct akcipher_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct akcipher_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pkcs1pad_ctx* FUNC5 (struct crypto_akcipher*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 struct crypto_akcipher* FUNC7 (struct akcipher_request*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct akcipher_request*,int) ; 
 int /*<<< orphan*/  pkcs1pad_verify_complete_cb ; 

__attribute__((used)) static int FUNC11(struct akcipher_request *req)
{
	struct crypto_akcipher *tfm = FUNC7(req);
	struct pkcs1pad_ctx *ctx = FUNC5(tfm);
	struct pkcs1pad_request *req_ctx = FUNC1(req);
	int err;

	if (FUNC0(req->dst) ||
	    FUNC0(!req->dst_len) ||
	    !ctx->key_size || req->src_len < ctx->key_size)
		return -EINVAL;

	req_ctx->out_buf = FUNC8(ctx->key_size + req->dst_len, GFP_KERNEL);
	if (!req_ctx->out_buf)
		return -ENOMEM;

	FUNC9(req_ctx->out_sg, req_ctx->out_buf,
			    ctx->key_size, NULL);

	FUNC4(&req_ctx->child_req, ctx->child);
	FUNC2(&req_ctx->child_req, req->base.flags,
			pkcs1pad_verify_complete_cb, req);

	/* Reuse input buffer, output to a new buffer */
	FUNC3(&req_ctx->child_req, req->src,
				   req_ctx->out_sg, req->src_len,
				   ctx->key_size);

	err = FUNC6(&req_ctx->child_req);
	if (err != -EINPROGRESS && err != -EBUSY)
		return FUNC10(req, err);

	return err;
}