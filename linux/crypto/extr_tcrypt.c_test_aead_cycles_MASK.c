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
struct aead_request {int dummy; } ;
typedef  scalar_t__ cycles_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_request*) ; 
 int FUNC2 (struct aead_request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long,int) ; 

__attribute__((used)) static int FUNC5(struct aead_request *req, int enc, int blen)
{
	unsigned long cycles = 0;
	int ret = 0;
	int i;

	/* Warm-up run. */
	for (i = 0; i < 4; i++) {
		if (enc)
			ret = FUNC2(req, FUNC1(req));
		else
			ret = FUNC2(req, FUNC0(req));

		if (ret)
			goto out;
	}

	/* The real thing. */
	for (i = 0; i < 8; i++) {
		cycles_t start, end;

		start = FUNC3();
		if (enc)
			ret = FUNC2(req, FUNC1(req));
		else
			ret = FUNC2(req, FUNC0(req));
		end = FUNC3();

		if (ret)
			goto out;

		cycles += end - start;
	}

out:
	if (ret == 0)
		FUNC4("1 operation in %lu cycles (%d bytes)\n",
		       (cycles + 4) / 8, blen);

	return ret;
}