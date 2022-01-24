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
struct crypto_larval {scalar_t__ adult; } ;
struct crypto_alg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_larval*) ; 

__attribute__((used)) static void FUNC4(struct crypto_alg *alg)
{
	struct crypto_larval *larval = (void *)alg;

	FUNC0(!FUNC1(alg));
	if (larval->adult)
		FUNC2(larval->adult);
	FUNC3(larval);
}