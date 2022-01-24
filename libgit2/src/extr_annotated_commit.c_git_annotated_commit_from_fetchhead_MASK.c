#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_4__ {void* remote_url; void* ref_name; } ;
typedef  TYPE_1__ git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (char const*) ; 

int FUNC4(
	git_annotated_commit **out,
	git_repository *repo,
	const char *branch_name,
	const char *remote_url,
	const git_oid *id)
{
	FUNC2(repo && id && branch_name && remote_url);

	if (FUNC1(out, repo, id, branch_name) < 0)
		return -1;

	(*out)->ref_name = FUNC3(branch_name);
	FUNC0((*out)->ref_name);

	(*out)->remote_url = FUNC3(remote_url);
	FUNC0((*out)->remote_url);

	return 0;
}