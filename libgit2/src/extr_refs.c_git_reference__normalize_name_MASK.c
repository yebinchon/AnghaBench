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
typedef  int /*<<< orphan*/  git_path_iconv_t ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int GIT_EINVALIDSPEC ; 
 int /*<<< orphan*/  GIT_ERROR_REFERENCE ; 
 int /*<<< orphan*/  GIT_PATH_ICONV_INIT ; 
 unsigned int GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL ; 
 unsigned int GIT_REFERENCE_FORMAT_REFSPEC_PATTERN ; 
 unsigned int GIT_REFERENCE_FORMAT_REFSPEC_SHORTHAND ; 
 unsigned int GIT_REFERENCE_FORMAT__PRECOMPOSE_UNICODE ; 
 unsigned int GIT_REFERENCE_FORMAT__VALIDATION_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC11 (int /*<<< orphan*/ *,char const**,size_t*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (char const*,...) ; 
 scalar_t__ FUNC15 (char const*,char,int) ; 
 char const* FUNC16 (char const*,char) ; 
 int /*<<< orphan*/  FUNC17 (char*,char const*) ; 
 size_t FUNC18 (char const*) ; 

int FUNC19(
	git_buf *buf,
	const char *name,
	unsigned int flags)
{
	const char *current;
	int segment_len, segments_count = 0, error = GIT_EINVALIDSPEC;
	unsigned int process_flags;
	bool normalize = (buf != NULL);
	bool validate = (flags & GIT_REFERENCE_FORMAT__VALIDATION_DISABLE) == 0;

#ifdef GIT_USE_ICONV
	git_path_iconv_t ic = GIT_PATH_ICONV_INIT;
#endif

	FUNC0(name);

	process_flags = flags;
	current = (char *)name;

	if (validate && *current == '/')
		goto cleanup;

	if (normalize)
		FUNC2(buf);

#ifdef GIT_USE_ICONV
	if ((flags & GIT_REFERENCE_FORMAT__PRECOMPOSE_UNICODE) != 0) {
		size_t namelen = strlen(current);
		if ((error = git_path_iconv_init_precompose(&ic)) < 0 ||
			(error = git_path_iconv(&ic, &current, &namelen)) < 0)
			goto cleanup;
		error = GIT_EINVALIDSPEC;
	}
#endif

	if (!validate) {
		FUNC8(buf, current);

		error = FUNC7(buf) ? -1 : 0;
		goto cleanup;
	}

	while (true) {
		char may_contain_glob = process_flags & GIT_REFERENCE_FORMAT_REFSPEC_PATTERN;

		segment_len = FUNC1(current, may_contain_glob);
		if (segment_len < 0)
			goto cleanup;

		if (segment_len > 0) {
			/*
			 * There may only be one glob in a pattern, thus we reset
			 * the pattern-flag in case the current segment has one.
			 */
			if (FUNC15(current, '*', segment_len))
				process_flags &= ~GIT_REFERENCE_FORMAT_REFSPEC_PATTERN;

			if (normalize) {
				size_t cur_len = FUNC6(buf);

				FUNC5(buf, FUNC3(buf), current);
				FUNC9(buf,
					cur_len + segment_len + (segments_count ? 1 : 0));

				if (FUNC7(buf)) {
					error = -1;
					goto cleanup;
				}
			}

			segments_count++;
		}

		/* No empty segment is allowed when not normalizing */
		if (segment_len == 0 && !normalize)
			goto cleanup;

		if (current[segment_len] == '\0')
			break;

		current += segment_len + 1;
	}

	/* A refname can not be empty */
	if (segment_len == 0 && segments_count == 0)
		goto cleanup;

	/* A refname can not end with "." */
	if (current[segment_len - 1] == '.')
		goto cleanup;

	/* A refname can not end with "/" */
	if (current[segment_len - 1] == '/')
		goto cleanup;

	if ((segments_count == 1 ) && !(flags & GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL))
		goto cleanup;

	if ((segments_count == 1 ) &&
	    !(flags & GIT_REFERENCE_FORMAT_REFSPEC_SHORTHAND) &&
		!(FUNC14(name, (size_t)segment_len) ||
			((flags & GIT_REFERENCE_FORMAT_REFSPEC_PATTERN) && !FUNC17("*", name))))
			goto cleanup;

	if ((segments_count > 1)
		&& (FUNC14(name, FUNC16(name, '/') - name)))
			goto cleanup;

	error = 0;

cleanup:
	if (error == GIT_EINVALIDSPEC)
		FUNC10(
			GIT_ERROR_REFERENCE,
			"the given reference name '%s' is not valid", name);

	if (error && normalize)
		FUNC4(buf);

#ifdef GIT_USE_ICONV
	git_path_iconv_clear(&ic);
#endif

	return error;
}