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
struct drbg_state {int /*<<< orphan*/  drbg_mutex; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 struct drbg_state* FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct crypto_tfm *tfm)
{
	struct drbg_state *drbg = FUNC0(tfm);

	FUNC1(&drbg->drbg_mutex);

	return 0;
}