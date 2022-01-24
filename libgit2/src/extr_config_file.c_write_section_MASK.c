#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int size; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char const* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,char*) ; 
 int FUNC7 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char const*) ; 
 char* FUNC10 (char const*,char) ; 

__attribute__((used)) static int FUNC11(git_buf *fbuf, const char *key)
{
	int result;
	const char *dot;
	git_buf buf = GIT_BUF_INIT;

	/* All of this just for [section "subsection"] */
	dot = FUNC10(key, '.');
	FUNC8(&buf, '[');
	if (dot == NULL) {
		FUNC9(&buf, key);
	} else {
		char *escaped;
		FUNC7(&buf, key, dot - key);
		escaped = FUNC1(dot + 1);
		FUNC0(escaped);
		FUNC6(&buf, " \"%s\"", escaped);
		FUNC2(escaped);
	}
	FUNC9(&buf, "]\n");

	if (FUNC5(&buf))
		return -1;

	result = FUNC7(fbuf, FUNC3(&buf), buf.size);
	FUNC4(&buf);

	return result;
}