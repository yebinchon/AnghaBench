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
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

void FUNC8(git_repository *repo, git_signature *signature)
{
	git_index *index;

	FUNC1(FUNC7(&index, repo));

	FUNC0("stash/what", "hello\n");		/* ce013625030ba8dba906f756967f9e9ca394464a */
	FUNC0("stash/how", "small\n");		/* ac790413e2d7a26c3767e78c57bb28716686eebc */
	FUNC0("stash/who", "world\n");		/* cc628ccd10742baea8241c5924df992b5c019f71 */
	FUNC0("stash/when", "now\n");		/* b6ed15e81e2593d7bb6265eb4a991d29dc3e628b */
	FUNC0("stash/just.ignore", "me\n");	/* 78925fb1236b98b37a35e9723033e627f97aa88b */

	FUNC0("stash/.gitignore", "*.ignore\n");

	FUNC1(FUNC4(index, "what"));
	FUNC1(FUNC4(index, "how"));
	FUNC1(FUNC4(index, "who"));
	FUNC1(FUNC4(index, ".gitignore"));

	FUNC3(NULL, repo, signature, 0, "Initial commit");

	FUNC2("stash/what", "goodbye\n");			/* dd7e1c6f0fefe118f0b63d9f10908c460aa317a6 */
	FUNC2("stash/how", "not so small and\n");	/* e6d64adb2c7f3eb8feb493b556cc8070dca379a3 */
	FUNC2("stash/who", "funky world\n");		/* a0400d4954659306a976567af43125a0b1aa8595 */
	FUNC0("stash/why", "would anybody use stash?\n"); /* 88c2533e21f098b89c91a431d8075cbde422a51 */
	FUNC0("stash/where", "????\n");					/* e08f7fbb9a42a0c5367cf8b349f1f08c3d56bd72 */

	FUNC1(FUNC4(index, "what"));
	FUNC1(FUNC4(index, "how"));
	FUNC1(FUNC4(index, "why"));
	FUNC1(FUNC4(index, "where"));
	FUNC1(FUNC6(index));

	FUNC2("stash/what", "see you later\n");	/* bc99dc98b3eba0e9157e94769cd4d49cb49de449 */
	FUNC0("stash/where", "....\n");					/* e3d6434ec12eb76af8dfa843a64ba6ab91014a0b */

	FUNC5(index);
}