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
struct crypto_alg {int /*<<< orphan*/  cra_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_DYING ; 
 int /*<<< orphan*/  crypto_alg_sem ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct crypto_alg *alg)
{
	FUNC0(&crypto_alg_sem);
	alg->cra_flags |= CRYPTO_ALG_DYING;
	FUNC1(&crypto_alg_sem);
}