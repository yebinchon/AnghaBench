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
struct list_head {int dummy; } ;
struct crypto_alg {int /*<<< orphan*/  cra_list; int /*<<< orphan*/  cra_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_DEAD ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_alg*,struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct crypto_alg *alg, struct list_head *list)
{
	if (FUNC3(FUNC2(&alg->cra_list)))
		return -ENOENT;

	alg->cra_flags |= CRYPTO_ALG_DEAD;

	FUNC1(&alg->cra_list);
	FUNC0(alg, list, NULL);

	return 0;
}