#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 char* ALL_CRLF_TEXT_AS_CRLF ; 
 char* ALL_CRLF_TEXT_AS_LF ; 
 char* ALL_CRLF_TEXT_RAW ; 
 char* ALL_LF_TEXT_AS_CRLF ; 
 char* ALL_LF_TEXT_AS_LF ; 
 char* ALL_LF_TEXT_RAW ; 
 TYPE_1__ GIT_BUF_INIT ; 
 char* MORE_CRLF_TEXT_AS_CRLF ; 
 char* MORE_CRLF_TEXT_AS_LF ; 
 char* MORE_CRLF_TEXT_RAW ; 
 char* MORE_LF_TEXT_AS_CRLF ; 
 char* MORE_LF_TEXT_AS_LF ; 
 char* MORE_LF_TEXT_RAW ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*) ; 

void FUNC6(void)
{
	git_buf src = GIT_BUF_INIT, tgt = GIT_BUF_INIT;

	/* LF source */

	FUNC3(&src, "lf\nlf\nlf\nlf\n");

	FUNC1(FUNC5(&tgt, &src));
	FUNC0("lf\r\nlf\r\nlf\r\nlf\r\n", tgt);

	FUNC1(FUNC4(&tgt, &src));
	FUNC0(src.ptr, tgt);

	FUNC3(&src, "\nlf\nlf\nlf\nlf\nlf");

	FUNC1(FUNC5(&tgt, &src));
	FUNC0("\r\nlf\r\nlf\r\nlf\r\nlf\r\nlf", tgt);

	FUNC1(FUNC4(&tgt, &src));
	FUNC0(src.ptr, tgt);

	/* CRLF source */

	FUNC3(&src, "crlf\r\ncrlf\r\ncrlf\r\ncrlf\r\n");

	FUNC1(FUNC5(&tgt, &src));
	FUNC0("crlf\r\ncrlf\r\ncrlf\r\ncrlf\r\n", tgt);

	FUNC3(&src, "crlf\r\ncrlf\r\ncrlf\r\ncrlf\r\n");

	FUNC1(FUNC4(&tgt, &src));
	FUNC0("crlf\ncrlf\ncrlf\ncrlf\n", tgt);

	FUNC3(&src, "\r\ncrlf\r\ncrlf\r\ncrlf\r\ncrlf\r\ncrlf");

	FUNC1(FUNC5(&tgt, &src));
	FUNC0("\r\ncrlf\r\ncrlf\r\ncrlf\r\ncrlf\r\ncrlf", tgt);

	FUNC3(&src, "\r\ncrlf\r\ncrlf\r\ncrlf\r\ncrlf\r\ncrlf");

	FUNC1(FUNC4(&tgt, &src));
	FUNC0("\ncrlf\ncrlf\ncrlf\ncrlf\ncrlf", tgt);

	/* CRLF in LF text */

	FUNC3(&src, "\nlf\nlf\ncrlf\r\nlf\nlf\ncrlf\r\n");

	FUNC1(FUNC5(&tgt, &src));
	FUNC0("\r\nlf\r\nlf\r\ncrlf\r\nlf\r\nlf\r\ncrlf\r\n", tgt);

	FUNC3(&src, "\nlf\nlf\ncrlf\r\nlf\nlf\ncrlf\r\n");

	FUNC1(FUNC4(&tgt, &src));
	FUNC0("\nlf\nlf\ncrlf\nlf\nlf\ncrlf\n", tgt);

	/* LF in CRLF text */

	FUNC3(&src, "\ncrlf\r\ncrlf\r\nlf\ncrlf\r\ncrlf");

	FUNC1(FUNC5(&tgt, &src));
	FUNC0("\r\ncrlf\r\ncrlf\r\nlf\r\ncrlf\r\ncrlf", tgt);

	FUNC1(FUNC4(&tgt, &src));
	FUNC0("\ncrlf\ncrlf\nlf\ncrlf\ncrlf", tgt);

	/* bare CR test */

	FUNC3(&src, "\rcrlf\r\nlf\nlf\ncr\rcrlf\r\nlf\ncr\r");

	FUNC1(FUNC5(&tgt, &src));
	FUNC0("\rcrlf\r\nlf\r\nlf\r\ncr\rcrlf\r\nlf\r\ncr\r", tgt);

	FUNC3(&src, "\rcrlf\r\nlf\nlf\ncr\rcrlf\r\nlf\ncr\r");

	FUNC1(FUNC4(&tgt, &src));
	FUNC0("\rcrlf\nlf\nlf\ncr\rcrlf\nlf\ncr\r", tgt);

	FUNC3(&src, "\rcr\r");
	FUNC1(FUNC5(&tgt, &src));
	FUNC0(src.ptr, tgt);
	FUNC1(FUNC4(&tgt, &src));
	FUNC0("\rcr\r", tgt);

	FUNC2(&src);
	FUNC2(&tgt);

	/* blob correspondence tests */

	FUNC3(&src, ALL_CRLF_TEXT_RAW);
	FUNC1(FUNC5(&tgt, &src));
	FUNC0(ALL_CRLF_TEXT_AS_CRLF, tgt);
	FUNC3(&src, ALL_CRLF_TEXT_RAW);
	FUNC1(FUNC4(&tgt, &src));
	FUNC0(ALL_CRLF_TEXT_AS_LF, tgt);
	FUNC2(&src);
	FUNC2(&tgt);

	FUNC3(&src, ALL_LF_TEXT_RAW);
	FUNC1(FUNC5(&tgt, &src));
	FUNC0(ALL_LF_TEXT_AS_CRLF, tgt);
	FUNC3(&src, ALL_LF_TEXT_RAW);
	FUNC1(FUNC4(&tgt, &src));
	FUNC0(ALL_LF_TEXT_AS_LF, tgt);
	FUNC2(&src);
	FUNC2(&tgt);

	FUNC3(&src, MORE_CRLF_TEXT_RAW);
	FUNC1(FUNC5(&tgt, &src));
	FUNC0(MORE_CRLF_TEXT_AS_CRLF, tgt);
	FUNC3(&src, MORE_CRLF_TEXT_RAW);
	FUNC1(FUNC4(&tgt, &src));
	FUNC0(MORE_CRLF_TEXT_AS_LF, tgt);
	FUNC2(&src);
	FUNC2(&tgt);

	FUNC3(&src, MORE_LF_TEXT_RAW);
	FUNC1(FUNC5(&tgt, &src));
	FUNC0(MORE_LF_TEXT_AS_CRLF, tgt);
	FUNC3(&src, MORE_LF_TEXT_RAW);
	FUNC1(FUNC4(&tgt, &src));
	FUNC0(MORE_LF_TEXT_AS_LF, tgt);
	FUNC2(&src);
	FUNC2(&tgt);
}