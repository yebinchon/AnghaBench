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
struct replay_opts {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UPDATE_REFS_MSG_ON_ERR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct replay_opts*) ; 
 int FUNC2 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC3 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (struct object_id const*) ; 
 char* FUNC5 (struct replay_opts*,char*,char*,char const*) ; 
 scalar_t__ FUNC6 (struct repository*,struct replay_opts*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct replay_opts*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,struct object_id*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct repository *r, struct replay_opts *opts,
			 const char *onto_name, const struct object_id *onto,
			 const char *orig_head)
{
	struct object_id oid;
	const char *action = FUNC5(opts, "start", "checkout %s", onto_name);

	if (FUNC3(orig_head, &oid))
		return FUNC2(FUNC0("%s: not a valid OID"), orig_head);

	if (FUNC6(r, opts, FUNC4(onto), action)) {
		FUNC1(opts);
		FUNC7(opts);
		return FUNC2(FUNC0("could not detach HEAD"));
	}

	return FUNC8(NULL, "ORIG_HEAD", &oid, NULL, 0, UPDATE_REFS_MSG_ON_ERR);
}