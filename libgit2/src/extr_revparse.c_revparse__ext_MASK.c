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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_EINVALIDSPEC ; 
 int GIT_ERROR ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,char const*,size_t,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,size_t*) ; 
 int FUNC6 (int*,char const*,size_t*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,size_t*) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,char const*,size_t,int /*<<< orphan*/ *,char*) ; 
 int FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 

int FUNC19(
	git_object **object_out,
	git_reference **reference_out,
	size_t *identifier_len_out,
	git_repository *repo,
	const char *spec)
{
	size_t pos = 0, identifier_len = 0;
	int error = -1, n;
	git_buf buf = GIT_BUF_INIT;

	git_reference *reference = NULL;
	git_object *base_rev = NULL;

	bool should_return_reference = true;

	FUNC1(object_out && reference_out && repo && spec);

	*object_out = NULL;
	*reference_out = NULL;

	while (spec[pos]) {
		switch (spec[pos]) {
		case '^':
			should_return_reference = false;

			if ((error = FUNC3(&base_rev, &reference, spec, identifier_len, repo, false)) < 0)
				goto cleanup;

			if (spec[pos+1] == '{') {
				git_object *temp_object = NULL;

				if ((error = FUNC5(&buf, spec, &pos)) < 0)
					goto cleanup;

				if ((error = FUNC14(&temp_object, base_rev, FUNC8(&buf))) < 0)
					goto cleanup;

				FUNC11(base_rev);
				base_rev = temp_object;
			} else {
				git_object *temp_object = NULL;

				if ((error = FUNC6(&n, spec, &pos)) < 0)
					goto cleanup;

				if ((error = FUNC15(&temp_object, base_rev, n)) < 0)
					goto cleanup;

				FUNC11(base_rev);
				base_rev = temp_object;
			}
			break;

		case '~':
		{
			git_object *temp_object = NULL;

			should_return_reference = false;

			if ((error = FUNC6(&n, spec, &pos)) < 0)
				goto cleanup;

			if ((error = FUNC3(&base_rev, &reference, spec, identifier_len, repo, false)) < 0)
				goto cleanup;

			if ((error = FUNC18(&temp_object, base_rev, n)) < 0)
				goto cleanup;

			FUNC11(base_rev);
			base_rev = temp_object;
			break;
		}

		case ':':
		{
			git_object *temp_object = NULL;

			should_return_reference = false;

			if ((error = FUNC7(&buf, spec, &pos)) < 0)
				goto cleanup;

			if (FUNC0(base_rev, reference, identifier_len)) {
				if ((error = FUNC3(&base_rev, &reference, spec, identifier_len, repo, true)) < 0)
					goto cleanup;

				if ((error = FUNC16(&temp_object, base_rev, FUNC8(&buf))) < 0)
					goto cleanup;
			} else {
				if (*FUNC8(&buf) == '/') {
					if ((error = FUNC17(&temp_object, repo, NULL, FUNC8(&buf) + 1)) < 0)
						goto cleanup;
				} else {

					/*
					 * TODO: support merge-stage path lookup (":2:Makefile")
					 * and plain index blob lookup (:i-am/a/blob)
					 */
					FUNC10(GIT_ERROR_INVALID, "unimplemented");
					error = GIT_ERROR;
					goto cleanup;
				}
			}

			FUNC11(base_rev);
			base_rev = temp_object;
			break;
		}

		case '@':
			if (spec[pos+1] == '{') {
				git_object *temp_object = NULL;

				if ((error = FUNC5(&buf, spec, &pos)) < 0)
					goto cleanup;

				if ((error = FUNC2(base_rev)) < 0)
					goto cleanup;

				if ((error = FUNC13(&temp_object, &reference, spec, identifier_len, repo, FUNC8(&buf))) < 0)
					goto cleanup;

				if (temp_object != NULL)
					base_rev = temp_object;
				break;
			}
			/* fall through */

		default:
			if ((error = FUNC4(base_rev, reference)) < 0)
				goto cleanup;

			pos++;
			identifier_len++;
		}
	}

	if ((error = FUNC3(&base_rev, &reference, spec, identifier_len, repo, false)) < 0)
		goto cleanup;

	if (!should_return_reference) {
		FUNC12(reference);
		reference = NULL;
	}

	*object_out = base_rev;
	*reference_out = reference;
	*identifier_len_out = identifier_len;
	error = 0;

cleanup:
	if (error) {
		if (error == GIT_EINVALIDSPEC)
			FUNC10(GIT_ERROR_INVALID,
				"failed to parse revision specifier - Invalid pattern '%s'", spec);

		FUNC11(base_rev);
		FUNC12(reference);
	}

	FUNC9(&buf);
	return error;
}