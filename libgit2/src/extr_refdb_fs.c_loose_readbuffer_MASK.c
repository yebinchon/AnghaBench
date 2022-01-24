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
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,char const*,char const*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(git_buf *buf, const char *base, const char *path)
{
	int error;

	/* build full path to file */
	if ((error = FUNC1(buf, base, path)) < 0 ||
		(error = FUNC2(buf, buf->ptr)) < 0)
		FUNC0(buf);

	return error;
}