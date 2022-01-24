#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_vector ;
typedef  int /*<<< orphan*/  git_refspec ;
typedef  int /*<<< orphan*/  git_buf ;
struct TYPE_2__ {scalar_t__ klass; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_CAP_SYMREF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GIT_ERROR_NET ; 
 scalar_t__ GIT_ERROR_NOMEMORY ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,int) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC11 (char const*,char) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(const char **out, git_vector *symrefs, const char *ptr)
{
	int error;
	const char *end;
	git_buf buf = GIT_BUF_INIT;
	git_refspec *mapping = NULL;

	ptr += FUNC12(GIT_CAP_SYMREF);
	if (*ptr != '=')
		goto on_invalid;

	ptr++;
	if (!(end = FUNC11(ptr, ' ')) &&
	    !(end = FUNC11(ptr, '\0')))
		goto on_invalid;

	if ((error = FUNC5(&buf, ptr, end - ptr)) < 0)
		return error;

	/* symref mapping has refspec format */
	mapping = FUNC1(1, sizeof(git_refspec));
	FUNC0(mapping);

	error = FUNC9(mapping, FUNC3(&buf), true);
	FUNC4(&buf);

	/* if the error isn't OOM, then it's a parse error; let's use a nicer message */
	if (error < 0) {
		if (FUNC6()->klass != GIT_ERROR_NOMEMORY)
			goto on_invalid;

		FUNC2(mapping);
		return error;
	}

	if ((error = FUNC10(symrefs, mapping)) < 0)
		return error;

	*out = end;
	return 0;

on_invalid:
	FUNC7(GIT_ERROR_NET, "remote sent invalid symref");
	FUNC8(mapping);
	FUNC2(mapping);
	return -1;
}