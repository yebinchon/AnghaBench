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
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct commit_message {char* label; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct commit*,struct commit_message*) ; 
 scalar_t__ FUNC3 (struct commit*,struct commit_message*) ; 
 scalar_t__ FUNC4 (char*,struct object_id*) ; 
 struct commit* FUNC5 (struct repository*,struct object_id*) ; 
 scalar_t__ FUNC6 (struct commit*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC7(struct repository *r)
{
	struct object_id head;
	struct commit *commit;
	struct commit_message message;

	if (FUNC4("HEAD", &head) ||
	    !(commit = FUNC5(r, &head)) ||
	    FUNC6(commit) || FUNC3(commit, &message))
		FUNC1(stderr, "%s", FUNC0("Stopped at HEAD\n"));
	else {
		FUNC1(stderr, FUNC0("Stopped at %s\n"), message.label);
		FUNC2(commit, &message);
	}
	return 0;

}