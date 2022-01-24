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
struct strbuf {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct strbuf*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct strbuf *sb, const char *path)
{
	int fd;
	ssize_t len;

	fd = FUNC4(path, O_RDONLY);
	if (fd < 0)
		return FUNC3(FUNC0("could not open '%s'"), path);
	len = FUNC5(sb, fd, 0);
	FUNC1(fd);
	if (len < 0)
		return FUNC2(FUNC0("could not read '%s'."), path);
	return len;
}