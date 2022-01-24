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
 int NLE_FAILURE ; 
 int NLE_MAX ; 
 int FUNC0 (int) ; 
 char const** errmsg ; 

const char *FUNC1(int error)
{
	error = FUNC0(error);

	if (error > NLE_MAX)
		error = NLE_FAILURE;

	return errmsg[error];
}