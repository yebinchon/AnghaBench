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
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(void)
{
	git_buf buf = GIT_BUF_INIT;

	FUNC2(FUNC4(&buf, "dGhpcw==", 8));
	FUNC0("this", buf.ptr);

	FUNC3(&buf);
	FUNC2(FUNC4(&buf, "dGhpcyE=", 8));
	FUNC0("this!", buf.ptr);

	FUNC3(&buf);
	FUNC2(FUNC4(&buf, "dGhpcyEK", 8));
	FUNC0("this!\n", buf.ptr);

	FUNC1(FUNC4(&buf, "This is not a valid base64 string!!!", 36));
	FUNC0("this!\n", buf.ptr);

	FUNC5(&buf);
}