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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int COPY_READ_ERROR ; 
 int COPY_WRITE_ERROR ; 
 scalar_t__ FUNC0 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int,char*,int) ; 

int FUNC2(int ifd, int ofd)
{
	while (1) {
		char buffer[8192];
		ssize_t len = FUNC1(ifd, buffer, sizeof(buffer));
		if (!len)
			break;
		if (len < 0)
			return COPY_READ_ERROR;
		if (FUNC0(ofd, buffer, len) < 0)
			return COPY_WRITE_ERROR;
	}
	return 0;
}