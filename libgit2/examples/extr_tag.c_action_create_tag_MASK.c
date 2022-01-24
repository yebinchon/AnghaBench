#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* opts; int /*<<< orphan*/ * repo; } ;
typedef  TYPE_1__ tag_state ;
struct TYPE_5__ {char* target; int /*<<< orphan*/  force; int /*<<< orphan*/  message; int /*<<< orphan*/  tag_name; } ;
typedef  TYPE_2__ tag_options ;
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(tag_state *state)
{
	git_repository *repo = state->repo;
	tag_options *opts = state->opts;
	git_signature *tagger;
	git_oid oid;
	git_object *target;

	FUNC0(!opts->tag_name, "Name required");
	FUNC0(!opts->message, "Message required");

	if (!opts->target) opts->target = "HEAD";

	FUNC1(FUNC3(&target, repo, opts->target),
			"Unable to resolve spec", opts->target);

	FUNC1(FUNC4(&tagger, repo),
			"Unable to create signature", NULL);

	FUNC1(FUNC6(&oid, repo, opts->tag_name,
				target, tagger, opts->message, opts->force), "Unable to create tag", NULL);

	FUNC2(target);
	FUNC5(tagger);
}