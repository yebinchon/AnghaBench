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

/* Variables and functions */
 scalar_t__ FUNC0 (int,unsigned char**) ; 
 scalar_t__ FUNC1 (int,scalar_t__,unsigned char**) ; 

__attribute__((used)) static ssize_t FUNC2(int fd, unsigned char **out, ssize_t req_len)
{
	if (req_len < 0)
		return FUNC0(fd, out);
	else
		return FUNC1(fd, req_len, out);
}