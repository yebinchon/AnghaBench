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
struct repository {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char const* FUNC1 (struct repository*,struct commit const*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*,char*) ; 
 char* FUNC3 (char const*,char const*,char const*) ; 
 char* FUNC4 (char*,char const*) ; 
 char* FUNC5 (struct repository*,struct commit const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct repository*,struct commit const*,char const*) ; 
 scalar_t__ FUNC7 (char const*,char const*) ; 
 char* FUNC8 (char const*) ; 

const char *FUNC9(struct repository *r,
				 const struct commit *commit,
				 char **commit_encoding,
				 const char *output_encoding)
{
	static const char *utf8 = "UTF-8";
	const char *use_encoding;
	char *encoding;
	const char *msg = FUNC5(r, commit, NULL);
	char *out;

	if (!output_encoding || !*output_encoding) {
		if (commit_encoding)
			*commit_encoding = FUNC2(msg, "encoding");
		return msg;
	}
	encoding = FUNC2(msg, "encoding");
	if (commit_encoding)
		*commit_encoding = encoding;
	use_encoding = encoding ? encoding : utf8;
	if (FUNC7(use_encoding, output_encoding)) {
		/*
		 * No encoding work to be done. If we have no encoding header
		 * at all, then there's nothing to do, and we can return the
		 * message verbatim (whether newly allocated or not).
		 */
		if (!encoding)
			return msg;

		/*
		 * Otherwise, we still want to munge the encoding header in the
		 * result, which will be done by modifying the buffer. If we
		 * are using a fresh copy, we can reuse it. But if we are using
		 * the cached copy from get_commit_buffer, we need to duplicate it
		 * to avoid munging the cached copy.
		 */
		if (msg == FUNC1(r, commit, NULL))
			out = FUNC8(msg);
		else
			out = (char *)msg;
	}
	else {
		/*
		 * There's actual encoding work to do. Do the reencoding, which
		 * still leaves the header to be replaced in the next step. At
		 * this point, we are done with msg. If we allocated a fresh
		 * copy, we can free it.
		 */
		out = FUNC3(msg, output_encoding, use_encoding);
		if (out)
			FUNC6(r, commit, msg);
	}

	/*
	 * This replacement actually consumes the buffer we hand it, so we do
	 * not have to worry about freeing the old "out" here.
	 */
	if (out)
		out = FUNC4(out, output_encoding);

	if (!commit_encoding)
		FUNC0(encoding);
	/*
	 * If the re-encoding failed, out might be NULL here; in that
	 * case we just return the commit message verbatim.
	 */
	return out ? out : msg;
}