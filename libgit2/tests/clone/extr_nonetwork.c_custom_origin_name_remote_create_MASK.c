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
typedef  int /*<<< orphan*/  git_remote ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,char const*) ; 

int FUNC2(
	git_remote **out,
	git_repository *repo,
	const char *name,
	const char *url,
	void *payload)
{
	FUNC0(name);
	FUNC0(payload);

	return FUNC1(out, repo, "my_origin", url);
}