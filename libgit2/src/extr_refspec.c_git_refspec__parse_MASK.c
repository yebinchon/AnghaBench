#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int push; int force; int matching; char const* string; char const* src; char const* dst; int pattern; } ;
typedef  TYPE_1__ git_refspec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL ; 
 int GIT_REFERENCE_FORMAT_REFSPEC_PATTERN ; 
 int GIT_REFERENCE_FORMAT_REFSPEC_SHORTHAND ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (char const*) ; 
 void* FUNC3 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (char const*,char,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int) ; 
 scalar_t__ FUNC9 (char const*,char) ; 
 size_t FUNC10 (char const*) ; 
 char* FUNC11 (char const*,char) ; 

int FUNC12(git_refspec *refspec, const char *input, bool is_fetch)
{
	/* Ported from https://github.com/git/git/blob/f06d47e7e0d9db709ee204ed13a8a7486149f494/remote.c#L518-636 */

	size_t llen;
	int is_glob = 0;
	const char *lhs, *rhs;
	int flags;

	FUNC1(refspec && input);

	FUNC8(refspec, 0x0, sizeof(git_refspec));
	refspec->push = !is_fetch;

	lhs = input;
	if (*lhs == '+') {
		refspec->force = 1;
		lhs++;
	}

	rhs = FUNC11(lhs, ':');

	/*
	 * Before going on, special case ":" (or "+:") as a refspec
	 * for matching refs.
	 */
	if (!is_fetch && rhs == lhs && rhs[1] == '\0') {
		refspec->matching = 1;
		refspec->string = FUNC2(input);
		FUNC0(refspec->string);
		refspec->src = FUNC2("");
		FUNC0(refspec->src);
		refspec->dst = FUNC2("");
		FUNC0(refspec->dst);
		return 0;
	}

	if (rhs) {
		size_t rlen = FUNC10(++rhs);
		if (rlen || !is_fetch) {
			is_glob = (1 <= rlen && FUNC9(rhs, '*'));
			refspec->dst = FUNC3(rhs, rlen);
		}
	}

	llen = (rhs ? (size_t)(rhs - lhs - 1) : FUNC10(lhs));
	if (1 <= llen && FUNC7(lhs, '*', llen)) {
		if ((rhs && !is_glob) || (!rhs && is_fetch))
			goto invalid;
		is_glob = 1;
	} else if (rhs && is_glob)
		goto invalid;

	refspec->pattern = is_glob;
	refspec->src = FUNC3(lhs, llen);
	flags = GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL |
		GIT_REFERENCE_FORMAT_REFSPEC_SHORTHAND |
		(is_glob ? GIT_REFERENCE_FORMAT_REFSPEC_PATTERN : 0);

	if (is_fetch) {
		/*
			* LHS
			* - empty is allowed; it means HEAD.
			* - otherwise it must be a valid looking ref.
			*/
		if (!*refspec->src)
			; /* empty is ok */
		else if (!FUNC5(refspec->src, flags))
			goto invalid;
		/*
			* RHS
			* - missing is ok, and is same as empty.
			* - empty is ok; it means not to store.
			* - otherwise it must be a valid looking ref.
			*/
		if (!refspec->dst)
			; /* ok */
		else if (!*refspec->dst)
			; /* ok */
		else if (!FUNC5(refspec->dst, flags))
			goto invalid;
	} else {
		/*
			* LHS
			* - empty is allowed; it means delete.
			* - when wildcarded, it must be a valid looking ref.
			* - otherwise, it must be an extended SHA-1, but
			*   there is no existing way to validate this.
			*/
		if (!*refspec->src)
			; /* empty is ok */
		else if (is_glob) {
			if (!FUNC5(refspec->src, flags))
				goto invalid;
		}
		else {
			; /* anything goes, for now */
		}
		/*
			* RHS
			* - missing is allowed, but LHS then must be a
			*   valid looking ref.
			* - empty is not allowed.
			* - otherwise it must be a valid looking ref.
			*/
		if (!refspec->dst) {
			if (!FUNC5(refspec->src, flags))
				goto invalid;
		} else if (!*refspec->dst) {
			goto invalid;
		} else {
			if (!FUNC5(refspec->dst, flags))
				goto invalid;
		}

		/* if the RHS is empty, then it's a copy of the LHS */
		if (!refspec->dst) {
			refspec->dst = FUNC2(refspec->src);
			FUNC0(refspec->dst);
		}
	}

	refspec->string = FUNC2(input);
	FUNC0(refspec->string);

	return 0;

 invalid:
        FUNC4(
                GIT_ERROR_INVALID,
                "'%s' is not a valid refspec.", input);
        FUNC6(refspec);
	return -1;
}