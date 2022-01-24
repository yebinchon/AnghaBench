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
typedef  int /*<<< orphan*/  buffer_out ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_EINVALIDSPEC ; 
 int GIT_REFNAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char const*,unsigned int) ; 

__attribute__((used)) static void FUNC2(unsigned int flags, const char *input_refname)
{
	char buffer_out[GIT_REFNAME_MAX];

	FUNC0(
		GIT_EINVALIDSPEC,
		FUNC1(buffer_out, sizeof(buffer_out), input_refname, flags));
}