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
struct drbg_state {int fips_primed; int /*<<< orphan*/ * prev; int /*<<< orphan*/ * core; int /*<<< orphan*/ * d_ops; scalar_t__ reseed_ctr; int /*<<< orphan*/ * scratchpadbuf; int /*<<< orphan*/ * C; int /*<<< orphan*/ * Cbuf; int /*<<< orphan*/ * V; int /*<<< orphan*/ * Vbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_CRYPTO_FIPS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct drbg_state *drbg)
{
	if (!drbg)
		return;
	FUNC1(drbg->Vbuf);
	drbg->Vbuf = NULL;
	drbg->V = NULL;
	FUNC1(drbg->Cbuf);
	drbg->Cbuf = NULL;
	drbg->C = NULL;
	FUNC1(drbg->scratchpadbuf);
	drbg->scratchpadbuf = NULL;
	drbg->reseed_ctr = 0;
	drbg->d_ops = NULL;
	drbg->core = NULL;
	if (FUNC0(CONFIG_CRYPTO_FIPS)) {
		FUNC1(drbg->prev);
		drbg->prev = NULL;
		drbg->fips_primed = false;
	}
}