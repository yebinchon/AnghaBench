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
struct scomp_scratch {int /*<<< orphan*/  lock; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct crypto_scomp {int dummy; } ;
struct crypto_acomp {int dummy; } ;
struct acomp_req {int /*<<< orphan*/  dlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  slen; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  SCOMP_SCRATCH_SIZE ; 
 void** FUNC0 (struct acomp_req*) ; 
 void** FUNC1 (struct crypto_acomp*) ; 
 struct crypto_acomp* FUNC2 (struct acomp_req*) ; 
 int FUNC3 (struct crypto_scomp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int FUNC4 (struct crypto_scomp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 struct scomp_scratch* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  scomp_scratch ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct acomp_req *req, int dir)
{
	struct crypto_acomp *tfm = FUNC2(req);
	void **tfm_ctx = FUNC1(tfm);
	struct crypto_scomp *scomp = *tfm_ctx;
	void **ctx = FUNC0(req);
	struct scomp_scratch *scratch;
	int ret;

	if (!req->src || !req->slen || req->slen > SCOMP_SCRATCH_SIZE)
		return -EINVAL;

	if (req->dst && !req->dlen)
		return -EINVAL;

	if (!req->dlen || req->dlen > SCOMP_SCRATCH_SIZE)
		req->dlen = SCOMP_SCRATCH_SIZE;

	scratch = FUNC5(&scomp_scratch);
	FUNC8(&scratch->lock);

	FUNC6(scratch->src, req->src, 0, req->slen, 0);
	if (dir)
		ret = FUNC3(scomp, scratch->src, req->slen,
					    scratch->dst, &req->dlen, *ctx);
	else
		ret = FUNC4(scomp, scratch->src, req->slen,
					      scratch->dst, &req->dlen, *ctx);
	if (!ret) {
		if (!req->dst) {
			req->dst = FUNC7(req->dlen, GFP_ATOMIC, NULL);
			if (!req->dst) {
				ret = -ENOMEM;
				goto out;
			}
		}
		FUNC6(scratch->dst, req->dst, 0, req->dlen,
					 1);
	}
out:
	FUNC9(&scratch->lock);
	return ret;
}