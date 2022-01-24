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
struct kpp_request {scalar_t__ src; int /*<<< orphan*/  dst_len; int /*<<< orphan*/  dst; int /*<<< orphan*/  src_len; } ;
struct dh_ctx {scalar_t__ g; int /*<<< orphan*/  xa; } ;
struct crypto_kpp {int dummy; } ;
typedef  scalar_t__ MPI ;

/* Variables and functions */
 int EBADMSG ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC0 (struct dh_ctx*,scalar_t__,scalar_t__) ; 
 struct crypto_kpp* FUNC1 (struct kpp_request*) ; 
 struct dh_ctx* FUNC2 (struct crypto_kpp*) ; 
 int FUNC3 (struct dh_ctx*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct kpp_request *req)
{
	struct crypto_kpp *tfm = FUNC1(req);
	struct dh_ctx *ctx = FUNC2(tfm);
	MPI base, val = FUNC4(0);
	int ret = 0;
	int sign;

	if (!val)
		return -ENOMEM;

	if (FUNC8(!ctx->xa)) {
		ret = -EINVAL;
		goto err_free_val;
	}

	if (req->src) {
		base = FUNC6(req->src, req->src_len);
		if (!base) {
			ret = -EINVAL;
			goto err_free_val;
		}
		ret = FUNC3(ctx, base);
		if (ret)
			goto err_free_base;
	} else {
		base = ctx->g;
	}

	ret = FUNC0(ctx, base, val);
	if (ret)
		goto err_free_base;

	ret = FUNC7(val, req->dst, req->dst_len, &sign);
	if (ret)
		goto err_free_base;

	if (sign < 0)
		ret = -EBADMSG;
err_free_base:
	if (req->src)
		FUNC5(base);
err_free_val:
	FUNC5(val);
	return ret;
}