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
struct evbuffer {int dummy; } ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct evbuffer* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct evbuffer*) ; 
 int FUNC5 (struct evbuffer*,char*,int) ; 

__attribute__((used)) static int
FUNC6(BIO *b, char *out, int outlen)
{
	int r = 0;
	struct evbuffer *input;

	FUNC0(b);

	if (!out)
		return 0;
	if (!FUNC1(b))
		return -1;

	input = FUNC3(FUNC1(b));
	if (FUNC4(input) == 0) {
		/* If there's no data to read, say so. */
		FUNC2(b);
		return -1;
	} else {
		r = FUNC5(input, out, outlen);
	}

	return r;
}