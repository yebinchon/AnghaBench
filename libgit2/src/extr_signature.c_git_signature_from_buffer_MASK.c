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
typedef  int /*<<< orphan*/  git_signature ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const**,char const*,int /*<<< orphan*/ *,char) ; 
 int FUNC5 (char const*) ; 

int FUNC6(git_signature **out, const char *buf)
{
	git_signature *sig;
	const char *buf_end;
	int error;

	FUNC1(out && buf);

	*out = NULL;

	sig = FUNC2(1, sizeof(git_signature));
	FUNC0(sig);

	buf_end = buf + FUNC5(buf);
	error = FUNC4(sig, &buf, buf_end, NULL, '\0');

	if (error)
		FUNC3(sig);
	else
		*out = sig;

	return error;
}