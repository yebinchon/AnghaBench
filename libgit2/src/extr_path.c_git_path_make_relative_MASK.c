#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t size; char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,char const*,size_t) ; 
 scalar_t__ FUNC4 (TYPE_1__*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,size_t) ; 
 char* FUNC8 (char const*,char) ; 

int FUNC9(git_buf *path, const char *parent)
{
	const char *p, *q, *p_dirsep, *q_dirsep;
	size_t plen = path->size, newlen, alloclen, depth = 1, i, offset;

	for (p_dirsep = p = path->ptr, q_dirsep = q = parent; *p && *q; p++, q++) {
		if (*p == '/' && *q == '/') {
			p_dirsep = p;
			q_dirsep = q;
		}
		else if (*p != *q)
			break;
	}

	/* need at least 1 common path segment */
	if ((p_dirsep == path->ptr || q_dirsep == parent) &&
		(*p_dirsep != '/' || *q_dirsep != '/')) {
		FUNC5(GIT_ERROR_INVALID,
			"%s is not a parent of %s", parent, path->ptr);
		return GIT_ENOTFOUND;
	}

	if (*p == '/' && !*q)
		p++;
	else if (!*p && *q == '/')
		q++;
	else if (!*p && !*q)
		return FUNC2(path), 0;
	else {
		p = p_dirsep + 1;
		q = q_dirsep + 1;
	}

	plen -= (p - path->ptr);

	if (!*q)
		return FUNC3(path, p, plen);

	for (; (q = FUNC8(q, '/')) && *(q + 1); q++)
		depth++;

	FUNC1(&newlen, depth, 3);
	FUNC0(&newlen, newlen, plen);

	FUNC0(&alloclen, newlen, 1);

	/* save the offset as we might realllocate the pointer */
	offset = p - path->ptr;
	if (FUNC4(path, alloclen, 1) < 0)
		return -1;
	p = path->ptr + offset;

	FUNC7(path->ptr + (depth * 3), p, plen + 1);

	for (i = 0; i < depth; i++)
		FUNC6(path->ptr + (i * 3), "../", 3);

	path->size = newlen;
	return 0;
}