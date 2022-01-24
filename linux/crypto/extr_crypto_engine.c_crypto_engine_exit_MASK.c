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
struct crypto_engine {int /*<<< orphan*/  kworker; } ;

/* Variables and functions */
 int FUNC0 (struct crypto_engine*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct crypto_engine *engine)
{
	int ret;

	ret = FUNC0(engine);
	if (ret)
		return ret;

	FUNC1(engine->kworker);

	return 0;
}