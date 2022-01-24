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
typedef  scalar_t__ off_t ;

/* Variables and functions */
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const char *name, void **addr, size_t *len, int prot)
{
	off_t tmp_len;

	int fd = FUNC4(name, O_RDONLY);

	if (fd == -1)
		FUNC1(1, "%s", name);

	tmp_len = FUNC2(fd, 0, SEEK_END);
	if (tmp_len == (off_t)-1)
		FUNC1(1, "lseek");
	*len = (size_t)tmp_len;

	*addr = FUNC3(NULL, tmp_len, prot, MAP_PRIVATE, fd, 0);
	if (*addr == MAP_FAILED)
		FUNC1(1, "mmap");

	FUNC0(fd);
}