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
struct tr2_dst {int initialized; int fd; int /*<<< orphan*/  sysenv_var; } ;

/* Variables and functions */
 int /*<<< orphan*/  PREFIX_AF_UNIX ; 
 int STDERR_FILENO ; 
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct tr2_dst*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct tr2_dst*) ; 
 int FUNC10 (struct tr2_dst*,char const*) ; 
 int FUNC11 (struct tr2_dst*,char const*) ; 
 int FUNC12 (struct tr2_dst*,char const*) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 

int FUNC14(struct tr2_dst *dst)
{
	const char *tgt_value;

	/* don't open twice */
	if (dst->initialized)
		return dst->fd;

	dst->initialized = 1;

	tgt_value = FUNC13(dst->sysenv_var);

	if (!tgt_value || !FUNC6(tgt_value, "") || !FUNC6(tgt_value, "0") ||
	    !FUNC5(tgt_value, "false")) {
		dst->fd = 0;
		return dst->fd;
	}

	if (!FUNC6(tgt_value, "1") || !FUNC5(tgt_value, "true")) {
		dst->fd = STDERR_FILENO;
		return dst->fd;
	}

	if (FUNC7(tgt_value) == 1 && FUNC3(*tgt_value)) {
		dst->fd = FUNC0(tgt_value);
		return dst->fd;
	}

	if (FUNC1(tgt_value)) {
		if (FUNC2(tgt_value))
			return FUNC10(dst, tgt_value);
		else
			return FUNC11(dst, tgt_value);
	}

#ifndef NO_UNIX_SOCKETS
	if (FUNC4(tgt_value, PREFIX_AF_UNIX))
		return FUNC12(dst, tgt_value);
#endif

	/* Always warn about malformed values. */
	FUNC8(dst, tgt_value);
	FUNC9(dst);
	return 0;
}