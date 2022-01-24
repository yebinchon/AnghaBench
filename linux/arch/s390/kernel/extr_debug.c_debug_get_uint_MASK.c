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
 int EINVAL ; 
 int FUNC0 (char*,char**,int) ; 
 char* FUNC1 (char*) ; 

__attribute__((used)) static inline int FUNC2(char *buf)
{
	int rc;

	buf = FUNC1(buf);
	rc = FUNC0(buf, &buf, 10);
	if (*buf)
		rc = -EINVAL;
	return rc;
}