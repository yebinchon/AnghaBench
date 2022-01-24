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
struct gpg_format {int /*<<< orphan*/  program; } ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int FUNC1 (char*,char const*,char const*) ; 
 struct gpg_format* FUNC2 (char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 struct gpg_format* use_format ; 

int FUNC6(const char *var, const char *value, void *cb)
{
	struct gpg_format *fmt = NULL;
	char *fmtname = NULL;

	if (!FUNC5(var, "user.signingkey")) {
		if (!value)
			return FUNC0(var);
		FUNC4(value);
		return 0;
	}

	if (!FUNC5(var, "gpg.format")) {
		if (!value)
			return FUNC0(var);
		fmt = FUNC2(value);
		if (!fmt)
			return FUNC1("unsupported value for %s: %s",
				     var, value);
		use_format = fmt;
		return 0;
	}

	if (!FUNC5(var, "gpg.program") || !FUNC5(var, "gpg.openpgp.program"))
		fmtname = "openpgp";

	if (!FUNC5(var, "gpg.x509.program"))
		fmtname = "x509";

	if (fmtname) {
		fmt = FUNC2(fmtname);
		return FUNC3(&fmt->program, var, value);
	}

	return 0;
}