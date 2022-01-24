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
struct hash_alg_common {int /*<<< orphan*/  base; } ;
struct crypto_instance {int dummy; } ;
struct crypto_ahash_spawn {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  crypto_ahash_type ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct crypto_instance*,int /*<<< orphan*/ *) ; 

int FUNC1(struct crypto_ahash_spawn *spawn,
			    struct hash_alg_common *alg,
			    struct crypto_instance *inst)
{
	return FUNC0(&spawn->base, &alg->base, inst,
				  &crypto_ahash_type);
}