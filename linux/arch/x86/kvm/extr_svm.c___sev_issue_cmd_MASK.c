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
struct fd {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int EBADF ; 
 struct fd FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct fd) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,void*,int*) ; 

__attribute__((used)) static int FUNC3(int fd, int id, void *data, int *error)
{
	struct fd f;
	int ret;

	f = FUNC0(fd);
	if (!f.file)
		return -EBADF;

	ret = FUNC2(f.file, id, data, error);

	FUNC1(f);
	return ret;
}