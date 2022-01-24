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
struct crlf_attrs {scalar_t__ auto_crlf; scalar_t__ safe_crlf; scalar_t__ core_eol; scalar_t__ crlf_action; scalar_t__ attr_action; } ;
typedef  int /*<<< orphan*/  git_filter_source ;

/* Variables and functions */
 scalar_t__ GIT_AUTO_CRLF_FALSE ; 
 scalar_t__ GIT_AUTO_CRLF_INPUT ; 
 scalar_t__ GIT_AUTO_CRLF_TRUE ; 
 int /*<<< orphan*/  GIT_CONFIGMAP_AUTO_CRLF ; 
 int /*<<< orphan*/  GIT_CONFIGMAP_EOL ; 
 int /*<<< orphan*/  GIT_CONFIGMAP_SAFE_CRLF ; 
 scalar_t__ GIT_CRLF_AUTO ; 
 void* GIT_CRLF_AUTO_CRLF ; 
 void* GIT_CRLF_AUTO_INPUT ; 
 scalar_t__ GIT_CRLF_BINARY ; 
 scalar_t__ GIT_CRLF_TEXT ; 
 void* GIT_CRLF_TEXT_CRLF ; 
 void* GIT_CRLF_TEXT_INPUT ; 
 scalar_t__ GIT_CRLF_UNDEFINED ; 
 int GIT_EOL_CRLF ; 
 int GIT_EOL_LF ; 
 int GIT_FILTER_ALLOW_UNSAFE ; 
 scalar_t__ GIT_SAFE_CRLF_FAIL ; 
 scalar_t__ GIT_SAFE_CRLF_WARN ; 
 void* FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct crlf_attrs*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct crlf_attrs*) ; 

__attribute__((used)) static int FUNC7(
	struct crlf_attrs *ca,
	const char **attr_values,
	const git_filter_source *src)
{
	int error;

	FUNC5(ca, 0, sizeof(struct crlf_attrs));

	if ((error = FUNC4(&ca->auto_crlf,
		 FUNC3(src), GIT_CONFIGMAP_AUTO_CRLF)) < 0 ||
		(error = FUNC4(&ca->safe_crlf,
		 FUNC3(src), GIT_CONFIGMAP_SAFE_CRLF)) < 0 ||
		(error = FUNC4(&ca->core_eol,
		 FUNC3(src), GIT_CONFIGMAP_EOL)) < 0)
		return error;

	/* downgrade FAIL to WARN if ALLOW_UNSAFE option is used */
	if ((FUNC2(src) & GIT_FILTER_ALLOW_UNSAFE) &&
		ca->safe_crlf == GIT_SAFE_CRLF_FAIL)
		ca->safe_crlf = GIT_SAFE_CRLF_WARN;

	if (attr_values) {
		/* load the text attribute */
		ca->crlf_action = FUNC0(attr_values[2]); /* text */

		if (ca->crlf_action == GIT_CRLF_UNDEFINED)
			ca->crlf_action = FUNC0(attr_values[0]); /* crlf */

		if (ca->crlf_action != GIT_CRLF_BINARY) {
			/* load the eol attribute */
			int eol_attr = FUNC1(attr_values[1]);

			if (ca->crlf_action == GIT_CRLF_AUTO && eol_attr == GIT_EOL_LF)
				ca->crlf_action = GIT_CRLF_AUTO_INPUT;
			else if (ca->crlf_action == GIT_CRLF_AUTO && eol_attr == GIT_EOL_CRLF)
				ca->crlf_action = GIT_CRLF_AUTO_CRLF;
			else if (eol_attr == GIT_EOL_LF)
				ca->crlf_action = GIT_CRLF_TEXT_INPUT;
			else if (eol_attr == GIT_EOL_CRLF)
				ca->crlf_action = GIT_CRLF_TEXT_CRLF;
		}

		ca->attr_action = ca->crlf_action;
	} else {
		ca->crlf_action = GIT_CRLF_UNDEFINED;
	}

	if (ca->crlf_action == GIT_CRLF_TEXT)
		ca->crlf_action = FUNC6(ca) ? GIT_CRLF_TEXT_CRLF : GIT_CRLF_TEXT_INPUT;
	if (ca->crlf_action == GIT_CRLF_UNDEFINED && ca->auto_crlf == GIT_AUTO_CRLF_FALSE)
		ca->crlf_action = GIT_CRLF_BINARY;
	if (ca->crlf_action == GIT_CRLF_UNDEFINED && ca->auto_crlf == GIT_AUTO_CRLF_TRUE)
		ca->crlf_action = GIT_CRLF_AUTO_CRLF;
	if (ca->crlf_action == GIT_CRLF_UNDEFINED && ca->auto_crlf == GIT_AUTO_CRLF_INPUT)
		ca->crlf_action = GIT_CRLF_AUTO_INPUT;

	return 0;
}