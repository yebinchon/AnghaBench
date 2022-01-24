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
struct openflags {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 struct openflags FUNC0 () ; 
 int /*<<< orphan*/  R_OK ; 
 int /*<<< orphan*/  W_OK ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int errno ; 
 struct openflags FUNC2 (struct openflags) ; 
 struct openflags FUNC3 (struct openflags) ; 

int FUNC4(const char *file, struct openflags *mode_out)
{
	int err;

	*mode_out = FUNC0();

	err = FUNC1(file, W_OK);
	if (err && (errno != EACCES))
		return -errno;
	else if (!err)
		*mode_out = FUNC3(*mode_out);

	err = FUNC1(file, R_OK);
	if (err && (errno != EACCES))
		return -errno;
	else if (!err)
		*mode_out = FUNC2(*mode_out);

	return err;
}