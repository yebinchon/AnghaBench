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
struct crypto_template {int dummy; } ;
struct ahash_instance {int /*<<< orphan*/  alg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahash_instance*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct crypto_template*,int /*<<< orphan*/ ) ; 

int FUNC3(struct crypto_template *tmpl,
			    struct ahash_instance *inst)
{
	int err;

	err = FUNC1(&inst->alg);
	if (err)
		return err;

	return FUNC2(tmpl, FUNC0(inst));
}