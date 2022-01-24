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
struct module {int dummy; } ;
struct crypto_alg {struct module* cra_module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC1 (struct module*) ; 

void FUNC2(struct crypto_alg *alg)
{
	struct module *module = alg->cra_module;

	FUNC0(alg);
	FUNC1(module);
}