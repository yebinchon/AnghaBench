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
typedef  int /*<<< orphan*/  git_cred ;

/* Variables and functions */
 unsigned int GIT_CREDTYPE_USERNAME ; 
 int GIT_EUSER ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(git_cred **cred, const char *url, const char *username_from_url,
				  unsigned int allowed_types, void *data)
{
	int *with_user = (int *) data;
	FUNC0(cred); FUNC0(url); FUNC0(username_from_url); FUNC0(data);

	if (!*with_user)
		FUNC2(GIT_CREDTYPE_USERNAME, allowed_types);
	else
		FUNC1(!(allowed_types & GIT_CREDTYPE_USERNAME));

	return GIT_EUSER;
}