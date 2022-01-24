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
typedef  int /*<<< orphan*/  git_remote_head ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const***,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/ * remote ; 

void FUNC8(void)
{
	const git_remote_head **refs;
	size_t refs_len;

	FUNC2("testrepo.git");
	FUNC3(FUNC7("testrepo.git", "spaced testrepo.git"));

	FUNC4("spaced testrepo.git");

	FUNC3(FUNC6(&refs, &refs_len, remote));

	FUNC0(refs_len, 29);

	FUNC5(remote);	/* Disconnect from the "spaced repo" before the cleanup */
	remote = NULL;

	FUNC1("spaced testrepo.git");
}