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
struct loop_device {int /*<<< orphan*/  lo_lock; scalar_t__ lo_backing_file; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ PAGE_SIZE ; 
 size_t FUNC1 (char*) ; 
 char* FUNC2 (scalar_t__,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (char*) ; 

__attribute__((used)) static ssize_t FUNC7(struct loop_device *lo, char *buf)
{
	ssize_t ret;
	char *p = NULL;

	FUNC4(&lo->lo_lock);
	if (lo->lo_backing_file)
		p = FUNC2(lo->lo_backing_file, buf, PAGE_SIZE - 1);
	FUNC5(&lo->lo_lock);

	if (FUNC0(p))
		ret = FUNC1(p);
	else {
		ret = FUNC6(p);
		FUNC3(buf, p, ret);
		buf[ret++] = '\n';
		buf[ret] = 0;
	}

	return ret;
}