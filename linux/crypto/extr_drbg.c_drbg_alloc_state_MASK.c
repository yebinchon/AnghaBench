#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct drbg_state {int fips_primed; TYPE_2__* d_ops; void* prev; TYPE_1__* core; void* scratchpadbuf; void* scratchpad; void* Cbuf; void* C; void* Vbuf; void* V; } ;
struct TYPE_6__ {int (* crypto_init ) (struct drbg_state*) ;int /*<<< orphan*/  (* crypto_fini ) (struct drbg_state*) ;} ;
struct TYPE_5__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_CRYPTO_FIPS ; 
#define  DRBG_CTR 130 
#define  DRBG_HASH 129 
#define  DRBG_HMAC 128 
 int DRBG_TYPE_MASK ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*,int) ; 
 int FUNC2 (struct drbg_state*) ; 
 TYPE_2__ drbg_ctr_ops ; 
 int /*<<< orphan*/  FUNC3 (struct drbg_state*) ; 
 TYPE_2__ drbg_hash_ops ; 
 TYPE_2__ drbg_hmac_ops ; 
 unsigned int FUNC4 (int const) ; 
 int FUNC5 (struct drbg_state*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct drbg_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct drbg_state*) ; 

__attribute__((used)) static inline int FUNC10(struct drbg_state *drbg)
{
	int ret = -ENOMEM;
	unsigned int sb_size = 0;

	switch (drbg->core->flags & DRBG_TYPE_MASK) {
#ifdef CONFIG_CRYPTO_DRBG_HMAC
	case DRBG_HMAC:
		drbg->d_ops = &drbg_hmac_ops;
		break;
#endif /* CONFIG_CRYPTO_DRBG_HMAC */
#ifdef CONFIG_CRYPTO_DRBG_HASH
	case DRBG_HASH:
		drbg->d_ops = &drbg_hash_ops;
		break;
#endif /* CONFIG_CRYPTO_DRBG_HASH */
#ifdef CONFIG_CRYPTO_DRBG_CTR
	case DRBG_CTR:
		drbg->d_ops = &drbg_ctr_ops;
		break;
#endif /* CONFIG_CRYPTO_DRBG_CTR */
	default:
		ret = -EOPNOTSUPP;
		goto err;
	}

	ret = drbg->d_ops->crypto_init(drbg);
	if (ret < 0)
		goto err;

	drbg->Vbuf = FUNC6(FUNC5(drbg) + ret, GFP_KERNEL);
	if (!drbg->Vbuf) {
		ret = -ENOMEM;
		goto fini;
	}
	drbg->V = FUNC1(drbg->Vbuf, ret + 1);
	drbg->Cbuf = FUNC6(FUNC5(drbg) + ret, GFP_KERNEL);
	if (!drbg->Cbuf) {
		ret = -ENOMEM;
		goto fini;
	}
	drbg->C = FUNC1(drbg->Cbuf, ret + 1);
	/* scratchpad is only generated for CTR and Hash */
	if (drbg->core->flags & DRBG_HMAC)
		sb_size = 0;
	else if (drbg->core->flags & DRBG_CTR)
		sb_size = FUNC5(drbg) + FUNC2(drbg) + /* temp */
			  FUNC5(drbg) +	/* df_data */
			  FUNC2(drbg) +	/* pad */
			  FUNC2(drbg) +	/* iv */
			  FUNC5(drbg) + FUNC2(drbg); /* temp */
	else
		sb_size = FUNC5(drbg) + FUNC2(drbg);

	if (0 < sb_size) {
		drbg->scratchpadbuf = FUNC7(sb_size + ret, GFP_KERNEL);
		if (!drbg->scratchpadbuf) {
			ret = -ENOMEM;
			goto fini;
		}
		drbg->scratchpad = FUNC1(drbg->scratchpadbuf, ret + 1);
	}

	if (FUNC0(CONFIG_CRYPTO_FIPS)) {
		drbg->prev = FUNC7(FUNC4(drbg->core->flags),
				     GFP_KERNEL);
		if (!drbg->prev)
			goto fini;
		drbg->fips_primed = false;
	}

	return 0;

fini:
	drbg->d_ops->crypto_fini(drbg);
err:
	FUNC3(drbg);
	return ret;
}