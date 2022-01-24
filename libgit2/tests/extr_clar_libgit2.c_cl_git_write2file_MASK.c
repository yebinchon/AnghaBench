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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char const*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int,char const*,size_t) ; 
 size_t FUNC5 (char const*) ; 

void FUNC6(
	const char *path, const char *content, size_t content_len,
	int flags, unsigned int mode)
{
	int fd;
	FUNC0(path && content);
	FUNC0((fd = FUNC3(path, flags, mode)) >= 0);
	if (!content_len)
		content_len = FUNC5(content);
	FUNC1(FUNC4(fd, content, content_len));
	FUNC1(FUNC2(fd));
}