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
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char,int,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(void)
{
	git_buf a = GIT_BUF_INIT;

	FUNC8(&a, '/', 1, "foo");
	FUNC4(FUNC9(&a) == 0);
	FUNC5("foo", FUNC6(&a));

	FUNC8(&a, '/', 1, "bar");
	FUNC4(FUNC9(&a) == 0);
	FUNC5("foo/bar", FUNC6(&a));

	FUNC8(&a, '/', 1, "baz");
	FUNC4(FUNC9(&a) == 0);
	FUNC5("foo/bar/baz", FUNC6(&a));

	FUNC7(&a);

	FUNC0(NULL, "", "");
	FUNC0(NULL, "a", "a");
	FUNC0(NULL, "/a", "/a");
	FUNC0("", "", "");
	FUNC0("", "a", "a");
	FUNC0("", "/a", "/a");
	FUNC0("a", "", "a/");
	FUNC0("a", "/", "a/");
	FUNC0("a", "b", "a/b");
	FUNC0("/", "a", "/a");
	FUNC0("/", "", "/");
	FUNC0("/a", "/b", "/a/b");
	FUNC0("/a", "/b/", "/a/b/");
	FUNC0("/a/", "b/", "/a/b/");
	FUNC0("/a/", "/b/", "/a/b/");
	FUNC0("/a/", "//b/", "/a/b/");
	FUNC0("/abcd", "/defg", "/abcd/defg");
	FUNC0("/abcd", "/defg/", "/abcd/defg/");
	FUNC0("/abcd/", "defg/", "/abcd/defg/");
	FUNC0("/abcd/", "/defg/", "/abcd/defg/");

	FUNC3("abcd", 0, "efg", "abcd/efg");
	FUNC3("abcd", 1, "efg", "bcd/efg");
	FUNC3("abcd", 2, "efg", "cd/efg");
	FUNC3("abcd", 3, "efg", "d/efg");
	FUNC3("abcd", 4, "efg", "efg");
	FUNC3("abc/", 2, "efg", "c/efg");
	FUNC3("abc/", 3, "efg", "/efg");
	FUNC3("abc/", 4, "efg", "efg");
	FUNC3("abcd", 3, "", "d/");
	FUNC3("abcd", 4, "", "");
	FUNC3("abc/", 2, "", "c/");
	FUNC3("abc/", 3, "", "/");
	FUNC3("abc/", 4, "", "");

	FUNC1("", "", "");
	FUNC1("", "a", "a");
	FUNC1("", "/a", "/a");
	FUNC1("a", "", "a/");
	FUNC1("a", "/", "a/");
	FUNC1("a", "b", "a/b");
	FUNC1("/", "a", "/a");
	FUNC1("/", "", "/");
	FUNC1("/a", "/b", "/a/b");
	FUNC1("/a", "/b/", "/a/b/");
	FUNC1("/a/", "b/", "/a/b/");
	FUNC1("/a/", "/b/", "/a/b/");
	FUNC1("/abcd", "/defg", "/abcd/defg");
	FUNC1("/abcd", "/defg/", "/abcd/defg/");
	FUNC1("/abcd/", "defg/", "/abcd/defg/");
	FUNC1("/abcd/", "/defg/", "/abcd/defg/");

	FUNC2("", "", "", "", "");
	FUNC2("", "a", "", "", "a;");
	FUNC2("a", "", "", "", "a;");
	FUNC2("", "", "", "a", "a");
	FUNC2("a", "b", "", ";c;d;", "a;b;c;d;");
	FUNC2("a", "b", "", ";c;d", "a;b;c;d");
	FUNC2("abcd", "efgh", "ijkl", "mnop", "abcd;efgh;ijkl;mnop");
	FUNC2("abcd;", "efgh;", "ijkl;", "mnop;", "abcd;efgh;ijkl;mnop;");
	FUNC2(";abcd;", ";efgh;", ";ijkl;", ";mnop;", ";abcd;efgh;ijkl;mnop;");
}