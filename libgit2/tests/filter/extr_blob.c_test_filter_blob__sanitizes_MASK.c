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
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ git_buf ;
typedef  int /*<<< orphan*/  git_blob ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC11(void)
{
	git_blob *blob;
	git_buf buf;

	FUNC3(FUNC9(
		(git_object **)&blob, g_repo, "e69de29")); /* zero-byte */

	FUNC0(0, FUNC7(blob));
	FUNC1("", FUNC6(blob));

	FUNC10(&buf, 0, sizeof(git_buf));
	FUNC3(FUNC4(&buf, blob, "file.bin", NULL));
	FUNC2(0, buf.size);
	FUNC1("", buf.ptr);
	FUNC8(&buf);

	FUNC10(&buf, 0, sizeof(git_buf));
	FUNC3(FUNC4(&buf, blob, "file.crlf", NULL));
	FUNC2(0, buf.size);
	FUNC1("", buf.ptr);
	FUNC8(&buf);

	FUNC10(&buf, 0, sizeof(git_buf));
	FUNC3(FUNC4(&buf, blob, "file.lf", NULL));
	FUNC2(0, buf.size);
	FUNC1("", buf.ptr);
	FUNC8(&buf);

	FUNC5(blob);
}