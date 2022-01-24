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
typedef  scalar_t__ git_time_t ;
struct TYPE_4__ {int /*<<< orphan*/  email; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_signature ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  commit_ids ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*) ; 

void FUNC13(void) {
	static const char *commit_ids[] = {
		"a4a7dce85cf63874e984719f4fdd239f5145052f", /* 0 */
		"9fd738e8f7967c078dceed8190330fc8648ee56a", /* 1 */
		"4a202b346bb0fb0db7eff3cffeb3c70babbd2045", /* 2 */
		"c47800c7266a2be04c571c04d5a6614691ea99bd", /* 3 */
		"8496071c1b46c854b31185ea97743be6a8774479", /* 4 */
		"5b5b025afb0b4c913b4c338a42934a3863bf3644", /* 5 */
		"a65fedf39aefe402d3bb6e24df4d4f5fe4547750", /* 6 */
	};
	const size_t commit_count = sizeof(commit_ids) / sizeof(const char *);
	unsigned int i;

	for (i = 0; i < commit_count; ++i) {
		git_oid id;
		git_commit *commit;

		const git_signature *author, *committer;
		const char *message;
		git_time_t commit_time;
		unsigned int parents, p;
		git_commit *parent = NULL, *old_parent = NULL;

		FUNC12(&id, commit_ids[i]);

		FUNC3(FUNC7(&commit, g_repo, &id));

		message = FUNC8(commit);
		author = FUNC4(commit);
		committer = FUNC5(commit);
		commit_time = FUNC11(commit);
		parents = FUNC10(commit);

		FUNC1("Scott Chacon", author->name);
		FUNC1("schacon@gmail.com", author->email);
		FUNC1("Scott Chacon", committer->name);
		FUNC1("schacon@gmail.com", committer->email);
		FUNC0(message != NULL);
		FUNC0(commit_time > 0);
		FUNC0(parents <= 2);
		for (p = 0;p < parents;p++) {
			if (old_parent != NULL)
				FUNC6(old_parent);

			old_parent = parent;
			FUNC3(FUNC9(&parent, commit, p));
			FUNC0(parent != NULL);
			FUNC0(FUNC4(parent) != NULL); /* is it really a commit? */
		}
		FUNC6(old_parent);
		FUNC6(parent);

		FUNC2(FUNC9(&parent, commit, parents));
		FUNC6(commit);
	}
}