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
 int /*<<< orphan*/  FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*) ; 
 int FUNC3 (struct ahash_request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long,unsigned long) ; 
 int FUNC6 (struct ahash_request*,int,char*) ; 

__attribute__((used)) static int FUNC7(struct ahash_request *req, int blen,
			     int plen, char *out)
{
	unsigned long cycles = 0;
	int i, pcount, ret;

	if (plen == blen)
		return FUNC6(req, blen, out);

	/* Warm-up run. */
	for (i = 0; i < 4; i++) {
		ret = FUNC3(req, FUNC1(req));
		if (ret)
			goto out;
		for (pcount = 0; pcount < blen; pcount += plen) {
			ret = FUNC3(req, FUNC2(req));
			if (ret)
				goto out;
		}
		ret = FUNC3(req, FUNC0(req));
		if (ret)
			goto out;
	}

	/* The real thing. */
	for (i = 0; i < 8; i++) {
		cycles_t start, end;

		start = FUNC4();

		ret = FUNC3(req, FUNC1(req));
		if (ret)
			goto out;
		for (pcount = 0; pcount < blen; pcount += plen) {
			ret = FUNC3(req, FUNC2(req));
			if (ret)
				goto out;
		}
		ret = FUNC3(req, FUNC0(req));
		if (ret)
			goto out;

		end = FUNC4();

		cycles += end - start;
	}

out:
	if (ret)
		return ret;

	FUNC5("%6lu cycles/operation, %4lu cycles/byte\n",
		cycles / 8, cycles / (8 * blen));

	return 0;
}