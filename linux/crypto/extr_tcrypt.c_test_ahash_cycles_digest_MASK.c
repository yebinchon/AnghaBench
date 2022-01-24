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
struct ahash_request {int dummy; } ;
typedef  scalar_t__ cycles_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahash_request*) ; 
 int FUNC1 (struct ahash_request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct ahash_request *req, int blen,
				    char *out)
{
	unsigned long cycles = 0;
	int ret, i;

	/* Warm-up run. */
	for (i = 0; i < 4; i++) {
		ret = FUNC1(req, FUNC0(req));
		if (ret)
			goto out;
	}

	/* The real thing. */
	for (i = 0; i < 8; i++) {
		cycles_t start, end;

		start = FUNC2();

		ret = FUNC1(req, FUNC0(req));
		if (ret)
			goto out;

		end = FUNC2();

		cycles += end - start;
	}

out:
	if (ret)
		return ret;

	FUNC3("%6lu cycles/operation, %4lu cycles/byte\n",
		cycles / 8, cycles / (8 * blen));

	return 0;
}