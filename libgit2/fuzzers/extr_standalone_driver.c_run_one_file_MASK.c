#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  size; scalar_t__ ptr; } ;
typedef  TYPE_1__ git_buf ;
struct TYPE_7__ {char* message; } ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_3__* FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(const char *filename)
{
	git_buf buf = GIT_BUF_INIT;
	int error = 0;

	if (FUNC4(&buf, filename) < 0) {
		FUNC1(stderr, "Failed to read %s: %s\n", filename, FUNC3()->message);
		error = -1;
		goto exit;
	}

	FUNC0((const unsigned char *)buf.ptr, buf.size);
exit:
	FUNC2(&buf);
	return error;
}