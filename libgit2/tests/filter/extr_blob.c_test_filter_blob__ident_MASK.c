#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_4__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_buf ;
typedef  int /*<<< orphan*/  git_blob ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void FUNC9(void)
{
	git_oid id;
	git_blob *blob;
	git_buf buf = { 0 };

	FUNC1("crlf/test.ident", "Some text\n$Id$\nGoes there\n");
	FUNC2(FUNC3(&id, g_repo, "test.ident"));
	FUNC2(FUNC6(&blob, g_repo, &id));
	FUNC0(
		"Some text\n$Id$\nGoes there\n", FUNC7(blob));
	FUNC5(blob);

	FUNC1("crlf/test.ident", "Some text\n$Id: Any old just you want$\nGoes there\n");
	FUNC2(FUNC3(&id, g_repo, "test.ident"));
	FUNC2(FUNC6(&blob, g_repo, &id));
	FUNC0(
		"Some text\n$Id$\nGoes there\n", FUNC7(blob));

	FUNC2(FUNC4(&buf, blob, "filter.bin", NULL));
	FUNC0(
		"Some text\n$Id$\nGoes there\n", buf.ptr);

	FUNC2(FUNC4(&buf, blob, "filter.identcrlf", NULL));
	FUNC0(
		"Some text\r\n$Id: 3164f585d548ac68027d22b104f2d8100b2b6845 $\r\nGoes there\r\n", buf.ptr);

	FUNC2(FUNC4(&buf, blob, "filter.identlf", NULL));
	FUNC0(
		"Some text\n$Id: 3164f585d548ac68027d22b104f2d8100b2b6845 $\nGoes there\n", buf.ptr);

	FUNC8(&buf);
	FUNC5(blob);

}