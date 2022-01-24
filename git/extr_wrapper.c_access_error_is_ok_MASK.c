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
 unsigned int ACCESS_EACCES_OK ; 
 int EACCES ; 
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(int err, unsigned flag)
{
	return (FUNC0(err) ||
		((flag & ACCESS_EACCES_OK) && err == EACCES));
}