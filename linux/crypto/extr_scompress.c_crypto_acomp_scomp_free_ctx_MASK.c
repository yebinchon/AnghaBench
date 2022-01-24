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
 struct crypto_acomp* FUNC0 (struct acomp_req*) ; 
 struct crypto_tfm* FUNC1 (struct crypto_acomp*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_scomp*,void*) ; 
 struct crypto_scomp** FUNC3 (struct crypto_tfm*) ; 

void FUNC4(struct acomp_req *req)
{
	struct crypto_acomp *acomp = FUNC0(req);
	struct crypto_tfm *tfm = FUNC1(acomp);
	struct crypto_scomp **tfm_ctx = FUNC3(tfm);
	struct crypto_scomp *scomp = *tfm_ctx;
	void *ctx = *req->__ctx;

	if (ctx)
		FUNC2(scomp, ctx);
}