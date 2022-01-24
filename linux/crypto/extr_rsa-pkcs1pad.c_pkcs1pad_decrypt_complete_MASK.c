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
typedef  int u8 ;
struct TYPE_2__ {unsigned int dst_len; } ;
struct pkcs1pad_request {int* out_buf; TYPE_1__ child_req; } ;
struct pkcs1pad_ctx {int key_size; } ;
struct crypto_akcipher {int dummy; } ;
struct akcipher_request {unsigned int dst_len; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOVERFLOW ; 
 struct pkcs1pad_request* FUNC0 (struct akcipher_request*) ; 
 struct pkcs1pad_ctx* FUNC1 (struct crypto_akcipher*) ; 
 struct crypto_akcipher* FUNC2 (struct akcipher_request*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct akcipher_request *req, int err)
{
	struct crypto_akcipher *tfm = FUNC2(req);
	struct pkcs1pad_ctx *ctx = FUNC1(tfm);
	struct pkcs1pad_request *req_ctx = FUNC0(req);
	unsigned int dst_len;
	unsigned int pos;
	u8 *out_buf;

	if (err)
		goto done;

	err = -EINVAL;
	dst_len = req_ctx->child_req.dst_len;
	if (dst_len < ctx->key_size - 1)
		goto done;

	out_buf = req_ctx->out_buf;
	if (dst_len == ctx->key_size) {
		if (out_buf[0] != 0x00)
			/* Decrypted value had no leading 0 byte */
			goto done;

		dst_len--;
		out_buf++;
	}

	if (out_buf[0] != 0x02)
		goto done;

	for (pos = 1; pos < dst_len; pos++)
		if (out_buf[pos] == 0x00)
			break;
	if (pos < 9 || pos == dst_len)
		goto done;
	pos++;

	err = 0;

	if (req->dst_len < dst_len - pos)
		err = -EOVERFLOW;
	req->dst_len = dst_len - pos;

	if (!err)
		FUNC4(req->dst,
				FUNC5(req->dst, req->dst_len),
				out_buf + pos, req->dst_len);

done:
	FUNC3(req_ctx->out_buf);

	return err;
}