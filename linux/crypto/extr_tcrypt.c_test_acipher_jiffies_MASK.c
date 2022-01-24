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
struct skcipher_request {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct skcipher_request*) ; 
 int FUNC2 (struct skcipher_request*,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,long) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct skcipher_request *req, int enc,
				int blen, int secs)
{
	unsigned long start, end;
	int bcount;
	int ret;

	for (start = jiffies, end = start + secs * HZ, bcount = 0;
	     FUNC4(jiffies, end); bcount++) {
		if (enc)
			ret = FUNC2(req,
						FUNC1(req));
		else
			ret = FUNC2(req,
						FUNC0(req));

		if (ret)
			return ret;
	}

	FUNC3("%d operations in %d seconds (%ld bytes)\n",
		bcount, secs, (long)bcount * blen);
	return 0;
}