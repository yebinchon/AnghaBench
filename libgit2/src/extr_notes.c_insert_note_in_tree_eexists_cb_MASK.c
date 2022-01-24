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
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_REPOSITORY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static int FUNC2(git_tree **out,
	git_repository *repo,
	git_tree *parent,
	git_oid *note_oid,
	const char *annotated_object_sha,
	int fanout,
	int current_error)
{
	FUNC0(out);
	FUNC0(*repo);
	FUNC0(*parent);
	FUNC0(*note_oid);
	FUNC0(fanout);

	FUNC1(GIT_ERROR_REPOSITORY, "note for '%s' exists already", annotated_object_sha);
	return current_error;
}