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
struct crypto_spawn {int /*<<< orphan*/  inst; int /*<<< orphan*/  frontend; } ;
struct crypto_alg {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_alg*) ; 
 int FUNC1 (struct crypto_alg*) ; 
 struct crypto_alg* FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct crypto_spawn*,struct crypto_alg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_alg*) ; 

int FUNC5(struct crypto_spawn *spawn, const char *name,
		      u32 type, u32 mask)
{
	struct crypto_alg *alg;
	int err;

	alg = FUNC2(name, spawn->frontend, type, mask);
	if (FUNC0(alg))
		return FUNC1(alg);

	err = FUNC3(spawn, alg, spawn->inst, mask);
	FUNC4(alg);
	return err;
}