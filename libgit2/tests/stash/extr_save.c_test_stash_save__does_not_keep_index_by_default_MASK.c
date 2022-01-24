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

/* Variables and functions */
 int /*<<< orphan*/  GIT_STASH_DEFAULT ; 
 int /*<<< orphan*/  GIT_STATUS_WT_NEW ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  signature ; 
 int /*<<< orphan*/  stash_tip_oid ; 

void FUNC5(void)
{
/*
$ git stash

$ git show refs/stash:what
see you later

$ git show refs/stash:how
not so small and

$ git show refs/stash:who
funky world

$ git show refs/stash:when
fatal: Path 'when' exists on disk, but not in 'stash'.

$ git show refs/stash^2:what
goodbye

$ git show refs/stash^2:how
not so small and

$ git show refs/stash^2:who
world

$ git show refs/stash^2:when
fatal: Path 'when' exists on disk, but not in 'stash^2'.

$ git status --short
?? when

*/
	unsigned int status;

	FUNC2(FUNC3(&stash_tip_oid, repo, signature, NULL, GIT_STASH_DEFAULT));
	FUNC2(FUNC4(&status, repo, "when"));

	FUNC0("refs/stash:what", "bc99dc98b3eba0e9157e94769cd4d49cb49de449");	/* see you later */
	FUNC0("refs/stash:how", "e6d64adb2c7f3eb8feb493b556cc8070dca379a3");	/* not so small and */
	FUNC0("refs/stash:who", "a0400d4954659306a976567af43125a0b1aa8595");	/* funky world */
	FUNC0("refs/stash:when", NULL);
	FUNC0("refs/stash:why", "88c2533e21f098b89c91a431d8075cbdbe422a51"); /* would anybody use stash? */
	FUNC0("refs/stash:where", "e3d6434ec12eb76af8dfa843a64ba6ab91014a0b"); /* .... */
	FUNC0("refs/stash:.gitignore", "ac4d88de61733173d9959e4b77c69b9f17a00980");
	FUNC0("refs/stash:just.ignore", NULL);

	FUNC0("refs/stash^2:what", "dd7e1c6f0fefe118f0b63d9f10908c460aa317a6");	/* goodbye */
	FUNC0("refs/stash^2:how", "e6d64adb2c7f3eb8feb493b556cc8070dca379a3");	/* not so small and */
	FUNC0("refs/stash^2:who", "cc628ccd10742baea8241c5924df992b5c019f71");	/* world */
	FUNC0("refs/stash^2:when", NULL);
	FUNC0("refs/stash^2:why", "88c2533e21f098b89c91a431d8075cbdbe422a51"); /* would anybody use stash? */
	FUNC0("refs/stash^2:where", "e08f7fbb9a42a0c5367cf8b349f1f08c3d56bd72"); /* ???? */
	FUNC0("refs/stash^2:.gitignore", "ac4d88de61733173d9959e4b77c69b9f17a00980");
	FUNC0("refs/stash^2:just.ignore", NULL);

	FUNC0("refs/stash^3", NULL);

	FUNC1(GIT_STATUS_WT_NEW, status);
}