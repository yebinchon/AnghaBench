#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_status_list ;
struct TYPE_10__ {TYPE_2__* head_to_index; } ;
typedef  TYPE_3__ git_status_entry ;
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_11__ {int /*<<< orphan*/  id; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ git_rebase_operation ;
typedef  int /*<<< orphan*/  git_rebase ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_annotated_commit ;
struct TYPE_8__ {int /*<<< orphan*/  path; } ;
struct TYPE_9__ {TYPE_1__ new_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_EUNMERGED ; 
 int GIT_REBASE_OPERATION_PICK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  signature ; 
 int FUNC20 (char const*) ; 

void FUNC21(void)
{
	git_rebase *rebase;
	git_reference *branch_ref, *upstream_ref;
	git_annotated_commit *branch_head, *upstream_head;
	git_rebase_operation *rebase_operation;
	git_status_list *status_list;
	const git_status_entry *status_entry;
	git_oid pick_id, commit_id;

	const char *expected_merge =
"ASPARAGUS SOUP.\n"
"\n"
"<<<<<<< master\n"
"TAKE FOUR LARGE BUNCHES of asparagus, scrape it nicely, cut off one inch\n"
"OF THE TOPS, and lay them in water, chop the stalks and put them on the\n"
"FIRE WITH A PIECE OF BACON, a large onion cut up, and pepper and salt;\n"
"ADD TWO QUARTS OF WATER, boil them till the stalks are quite soft, then\n"
"PULP THEM THROUGH A SIEVE, and strain the water to it, which must be put\n"
"=======\n"
"Take four large bunches of asparagus, scrape it nicely, CUT OFF ONE INCH\n"
"of the tops, and lay them in water, chop the stalks and PUT THEM ON THE\n"
"fire with a piece of bacon, a large onion cut up, and pepper and salt;\n"
"add two quarts of water, boil them till the stalks are quite soft, then\n"
"pulp them through a sieve, and strain the water to it, which must be put\n"
">>>>>>> Conflicting modification 1 to asparagus\n"
"back in the pot; put into it a chicken cut up, with the tops of\n"
"asparagus which had been laid by, boil it until these last articles are\n"
"sufficiently done, thicken with flour, butter and milk, and serve it up.\n";

	FUNC6(FUNC15(&branch_ref, repo, "refs/heads/asparagus"));
	FUNC6(FUNC15(&upstream_ref, repo, "refs/heads/master"));

	FUNC6(FUNC8(&branch_head, repo, branch_ref));
	FUNC6(FUNC8(&upstream_head, repo, upstream_ref));

	FUNC6(FUNC12(&rebase, repo, branch_head, upstream_head, NULL, NULL));

	FUNC6(FUNC13(&rebase_operation, rebase));

	FUNC9(&pick_id, "33f915f9e4dbd9f4b24430e48731a59b45b15500");

	FUNC2(GIT_REBASE_OPERATION_PICK, rebase_operation->type);
	FUNC3(&pick_id, &rebase_operation->id);
	FUNC1("33f915f9e4dbd9f4b24430e48731a59b45b15500\n", 41, "rebase/.git/rebase-merge/current");
	FUNC1("1\n", 2, "rebase/.git/rebase-merge/msgnum");

	FUNC6(FUNC19(&status_list, repo, NULL));
	FUNC2(1, FUNC17(status_list));
	FUNC0(status_entry = FUNC16(status_list, 0));

	FUNC4("asparagus.txt", status_entry->head_to_index->new_file.path);

	FUNC1(expected_merge, FUNC20(expected_merge), "rebase/asparagus.txt");

	FUNC5(GIT_EUNMERGED, FUNC10(&commit_id, rebase, NULL, signature, NULL, NULL));

	FUNC18(status_list);
	FUNC7(branch_head);
	FUNC7(upstream_head);
	FUNC14(branch_ref);
	FUNC14(upstream_ref);
	FUNC11(rebase);
}