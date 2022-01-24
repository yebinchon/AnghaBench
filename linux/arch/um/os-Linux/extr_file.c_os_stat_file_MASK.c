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
struct uml_stat {int dummy; } ;
struct stat64 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct uml_stat*,struct stat64*) ; 
 int errno ; 
 int FUNC2 (char const*,struct stat64*) ; 

int FUNC3(const char *file_name, struct uml_stat *ubuf)
{
	struct stat64 sbuf;
	int err;

	FUNC0(err = FUNC2(file_name, &sbuf));
	if (err < 0)
		return -errno;

	if (ubuf != NULL)
		FUNC1(ubuf, &sbuf);
	return err;
}