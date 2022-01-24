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
struct strbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_COMMON_DIR_ENVIRONMENT ; 
 int FUNC0 (struct strbuf*,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*) ; 

int FUNC3(struct strbuf *sb, const char *gitdir)
{
	const char *git_env_common_dir = FUNC1(GIT_COMMON_DIR_ENVIRONMENT);
	if (git_env_common_dir) {
		FUNC2(sb, git_env_common_dir);
		return 1;
	} else {
		return FUNC0(sb, gitdir);
	}
}