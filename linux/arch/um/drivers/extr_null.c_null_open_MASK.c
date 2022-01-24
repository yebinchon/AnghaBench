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
 int /*<<< orphan*/  DEV_NULL ; 
 int /*<<< orphan*/  O_RDWR ; 
 int errno ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(int input, int output, int primary, void *d,
		     char **dev_out)
{
	int fd;

	*dev_out = NULL;

	fd = FUNC0(DEV_NULL, O_RDWR);
	return (fd < 0) ? -errno : fd;
}