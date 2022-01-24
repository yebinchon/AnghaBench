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

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,int,int) ; 

__attribute__((used)) static int FUNC3(int in, int out, void *data)
{
	int *fd = data, ret;
	if (FUNC0())
		FUNC1(fd[1]);
	ret = FUNC2("send-pack", fd[0], out);
	FUNC1(out);
	return ret;
}