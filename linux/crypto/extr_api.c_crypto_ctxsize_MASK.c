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
typedef  int /*<<< orphan*/  u32 ;
struct crypto_type {unsigned int (* ctxsize ) (struct crypto_alg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct crypto_alg {int cra_alignmask; int cra_flags; struct crypto_type* cra_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  CRYPTO_ALG_TYPE_CIPHER 129 
#define  CRYPTO_ALG_TYPE_COMPRESS 128 
 int CRYPTO_ALG_TYPE_MASK ; 
 unsigned int FUNC1 (struct crypto_alg*) ; 
 unsigned int FUNC2 (struct crypto_alg*) ; 
 int FUNC3 () ; 
 unsigned int FUNC4 (struct crypto_alg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC5(struct crypto_alg *alg, u32 type, u32 mask)
{
	const struct crypto_type *type_obj = alg->cra_type;
	unsigned int len;

	len = alg->cra_alignmask & ~(FUNC3() - 1);
	if (type_obj)
		return len + type_obj->ctxsize(alg, type, mask);

	switch (alg->cra_flags & CRYPTO_ALG_TYPE_MASK) {
	default:
		FUNC0();

	case CRYPTO_ALG_TYPE_CIPHER:
		len += FUNC1(alg);
		break;

	case CRYPTO_ALG_TYPE_COMPRESS:
		len += FUNC2(alg);
		break;
	}

	return len;
}