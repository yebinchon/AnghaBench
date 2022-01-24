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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char const*,int,int) ; 

int FUNC1(
	git_oid *oid,
	git_repository *repo,
	const char *tag_name,
	const git_object *target,
	const git_signature *tagger,
	const char *message,
	int allow_ref_overwrite)
{
	return FUNC0(oid, repo, tag_name, target, tagger, message, allow_ref_overwrite, 1);
}