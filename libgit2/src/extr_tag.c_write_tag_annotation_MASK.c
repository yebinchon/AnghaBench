#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_9__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ERROR_OBJECT ; 
 int /*<<< orphan*/  GIT_OBJECT_TAG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 char const* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC12(
		git_oid *oid,
		git_repository *repo,
		const char *tag_name,
		const git_object *target,
		const git_signature *tagger,
		const char *message)
{
	git_buf tag = GIT_BUF_INIT;
	git_odb *odb;

	FUNC9(&tag, "object ", FUNC5(target));
	FUNC1(&tag, "type %s\n", FUNC7(FUNC6(target)));
	FUNC1(&tag, "tag %s\n", tag_name);
	FUNC11(&tag, "tagger ", tagger);
	FUNC2(&tag, '\n');

	if (FUNC3(&tag, message) < 0)
		goto on_error;

	if (FUNC10(&odb, repo) < 0)
		goto on_error;

	if (FUNC8(oid, odb, tag.ptr, tag.size, GIT_OBJECT_TAG) < 0)
		goto on_error;

	FUNC0(&tag);
	return 0;

on_error:
	FUNC0(&tag);
	FUNC4(GIT_ERROR_OBJECT, "failed to create tag annotation");
	return -1;
}