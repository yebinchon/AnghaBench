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
struct TYPE_6__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 

void FUNC6(void)
{
	git_buf p = GIT_BUF_INIT;

	FUNC2(FUNC4(&p, "/this/is/a/base"));

	FUNC2(FUNC5(&p, "../test"));
	FUNC0("/this/is/a/test", p.ptr);

	FUNC2(FUNC5(&p, "../../the/./end"));
	FUNC0("/this/is/the/end", p.ptr);

	FUNC2(FUNC5(&p, "./of/this/../the/string"));
	FUNC0("/this/is/the/end/of/the/string", p.ptr);

	FUNC2(FUNC5(&p, "../../../../../.."));
	FUNC0("/this/", p.ptr);

	FUNC2(FUNC5(&p, "../"));
	FUNC0("/", p.ptr);

	FUNC1(FUNC5(&p, "../../.."));


	FUNC2(FUNC4(&p, "d:/another/test"));

	FUNC2(FUNC5(&p, "../.."));
	FUNC0("d:/", p.ptr);

	FUNC2(FUNC5(&p, "from/here/to/../and/./back/."));
	FUNC0("d:/from/here/and/back/", p.ptr);


	FUNC2(FUNC4(&p, "https://my.url.com/test.git"));

	FUNC2(FUNC5(&p, "../another.git"));
	FUNC0("https://my.url.com/another.git", p.ptr);

	FUNC2(FUNC5(&p, "../full/path/url.patch"));
	FUNC0("https://my.url.com/full/path/url.patch", p.ptr);

	FUNC2(FUNC5(&p, ".."));
	FUNC0("https://my.url.com/full/path/", p.ptr);

	FUNC2(FUNC5(&p, "../../../"));
	FUNC0("https://", p.ptr);


	FUNC2(FUNC4(&p, "../../this/is/relative"));

	FUNC2(FUNC5(&p, "../../preserves/the/prefix"));
	FUNC0("../../this/preserves/the/prefix", p.ptr);

	FUNC2(FUNC5(&p, "../../../../that"));
	FUNC0("../../that", p.ptr);

	FUNC2(FUNC5(&p, "../there"));
	FUNC0("../../there", p.ptr);
	FUNC3(&p);
}