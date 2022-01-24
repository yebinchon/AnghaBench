#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_7__ {TYPE_1__ cached; } ;
typedef  TYPE_2__ git_odb_object ;
typedef  int /*<<< orphan*/  git_odb ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  GIT_ERROR_OBJECT ; 
 scalar_t__ GIT_OBJECT_COMMIT ; 
 scalar_t__ FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char* FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int FUNC10 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 char* FUNC12 (char const*,char) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 

int FUNC14(git_buf *signature, git_buf *signed_data, git_repository *repo, git_oid *commit_id, const char *field)
{
	git_odb_object *obj;
	git_odb *odb;
	const char *buf;
	const char *h, *eol;
	int error;

	FUNC1(signature);
	FUNC1(signed_data);

	if (!field)
		field = "gpgsig";

	if ((error = FUNC11(&odb, repo)) < 0)
		return error;

	if ((error = FUNC10(&obj, odb, commit_id)) < 0)
		return error;

	if (obj->cached.type != GIT_OBJECT_COMMIT) {
		FUNC6(GIT_ERROR_INVALID, "the requested type does not match the type in ODB");
		error = GIT_ENOTFOUND;
		goto cleanup;
	}

	buf = FUNC8(obj);

	while ((h = FUNC12(buf, '\n')) && h[1] != '\0') {
		h++;
		if (FUNC0(buf, field)) {
			if (FUNC3(signed_data, buf, h - buf) < 0)
				return -1;

			buf = h;
			continue;
		}

		h = buf;
		h += FUNC13(field);
		eol = FUNC12(h, '\n');
		if (h[0] != ' ') {
			buf = h;
			continue;
		}
		if (!eol)
			goto malformed;

		h++; /* skip the SP */

		FUNC3(signature, h, eol - h);
		if (FUNC2(signature))
			goto oom;

		/* If the next line starts with SP, it's multi-line, we must continue */
		while (eol[1] == ' ') {
			FUNC4(signature, '\n');
			h = eol + 2;
			eol = FUNC12(h, '\n');
			if (!eol)
				goto malformed;

			FUNC3(signature, h, eol - h);
		}

		if (FUNC2(signature))
			goto oom;

		error = FUNC5(signed_data, eol+1);
		FUNC9(obj);
		return error;
	}

	FUNC6(GIT_ERROR_OBJECT, "this commit is not signed");
	error = GIT_ENOTFOUND;
	goto cleanup;

malformed:
	FUNC6(GIT_ERROR_OBJECT, "malformed header");
	error = -1;
	goto cleanup;
oom:
	FUNC7();
	error = -1;
	goto cleanup;

cleanup:
	FUNC9(obj);
	FUNC1(signature);
	FUNC1(signed_data);
	return error;
}