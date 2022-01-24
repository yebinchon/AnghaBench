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
struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct crypto_acomp {int /*<<< orphan*/  (* dst_free ) (int /*<<< orphan*/ *) ;} ;
struct acomp_req {int flags; int /*<<< orphan*/ * dst; } ;
struct TYPE_2__ {int /*<<< orphan*/ * cra_type; } ;

/* Variables and functions */
 int CRYPTO_ACOMP_ALLOC_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct acomp_req*) ; 
 struct crypto_acomp* FUNC1 (struct acomp_req*) ; 
 int /*<<< orphan*/  FUNC2 (struct acomp_req*) ; 
 struct crypto_tfm* FUNC3 (struct crypto_acomp*) ; 
 int /*<<< orphan*/  crypto_acomp_type ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct acomp_req *req)
{
	struct crypto_acomp *acomp = FUNC1(req);
	struct crypto_tfm *tfm = FUNC3(acomp);

	if (tfm->__crt_alg->cra_type != &crypto_acomp_type)
		FUNC2(req);

	if (req->flags & CRYPTO_ACOMP_ALLOC_OUTPUT) {
		acomp->dst_free(req->dst);
		req->dst = NULL;
	}

	FUNC0(req);
}