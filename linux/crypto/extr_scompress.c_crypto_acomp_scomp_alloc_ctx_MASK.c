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
struct crypto_tfm {int dummy; } ;
struct crypto_scomp {int dummy; } ;
struct crypto_acomp {int dummy; } ;
struct acomp_req {void** __ctx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 struct crypto_acomp* FUNC1 (struct acomp_req*) ; 
 struct crypto_tfm* FUNC2 (struct crypto_acomp*) ; 
 void* FUNC3 (struct crypto_scomp*) ; 
 struct crypto_scomp** FUNC4 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC5 (struct acomp_req*) ; 

struct acomp_req *FUNC6(struct acomp_req *req)
{
	struct crypto_acomp *acomp = FUNC1(req);
	struct crypto_tfm *tfm = FUNC2(acomp);
	struct crypto_scomp **tfm_ctx = FUNC4(tfm);
	struct crypto_scomp *scomp = *tfm_ctx;
	void *ctx;

	ctx = FUNC3(scomp);
	if (FUNC0(ctx)) {
		FUNC5(req);
		return NULL;
	}

	*req->__ctx = ctx;

	return req;
}