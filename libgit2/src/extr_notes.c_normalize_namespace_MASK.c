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
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 int FUNC2 (char**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(char **out, git_repository *repo, const char *notes_ref)
{
	if (notes_ref) {
		*out = FUNC1(notes_ref);
		FUNC0(*out);
		return 0;
	}

	return FUNC2(out, repo);
}