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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  hashsig_in_progress ;
typedef  int /*<<< orphan*/  git_hashsig_option_t ;
typedef  int /*<<< orphan*/  git_hashsig ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC6(
	git_hashsig **out,
	const char *buf,
	size_t buflen,
	git_hashsig_option_t opts)
{
	int error;
	hashsig_in_progress prog;
	git_hashsig *sig = FUNC3(opts);
	FUNC0(sig);

	FUNC5(&prog, sig);

	error = FUNC2(sig, (const uint8_t *)buf, buflen, &prog);

	if (!error)
		error = FUNC4(sig);

	if (!error)
		*out = sig;
	else
		FUNC1(sig);

	return error;
}