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
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char const**,int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,char const*,char const*) ; 

int FUNC4(git_signature **out, git_repository *repo)
{
	int error;
	git_config *cfg;
	const char *user_name, *user_email;

	if ((error = FUNC2(&cfg, repo)) < 0)
		return error;

	if (!(error = FUNC1(&user_name, cfg, "user.name")) &&
		!(error = FUNC1(&user_email, cfg, "user.email")))
		error = FUNC3(out, user_name, user_email);

	FUNC0(cfg);
	return error;
}