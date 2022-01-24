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
typedef  int /*<<< orphan*/  git_time_t ;
typedef  int /*<<< orphan*/  git_signature ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **,char const*,char const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(const char *name, const char *email, git_time_t time, int offset)
{
	git_signature *sign;
	int error = 0;

	if ((error =  FUNC1(&sign, name, email, time, offset)) < 0)
		return error;

	FUNC0((git_signature *)sign);

	return error;
}