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
struct TYPE_9__ {char** member_0; int member_1; } ;
typedef  TYPE_2__ git_strarray ;
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_10__ {char* src_refname; char* dst_refname; int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
typedef  TYPE_3__ git_push_update ;
struct TYPE_8__ {TYPE_3__* payload; int /*<<< orphan*/  push_negotiation; } ;
struct TYPE_11__ {TYPE_1__ callbacks; } ;
typedef  TYPE_4__ git_push_options ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 TYPE_4__ GIT_PUSH_OPTIONS_INIT ; 
 int /*<<< orphan*/  _remote ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__ const*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  negotiation_cb ; 

void FUNC8(void)
{
	git_push_options opts = GIT_PUSH_OPTIONS_INIT;
	git_reference *ref;
	git_push_update expected;
	char *refspec = ":refs/heads/master";
	const git_strarray refspecs = {
		&refspec,
		1,
	};

	FUNC1(FUNC4(&ref, _repo, "refs/heads/master"));

	expected.src_refname = "";
	expected.dst_refname = "refs/heads/master";
	FUNC7(&expected.dst, 0, sizeof(git_oid));
	FUNC2(&expected.src, FUNC5(ref));

	opts.callbacks.push_negotiation = negotiation_cb;
	opts.callbacks.payload = &expected;
	FUNC1(FUNC6(_remote, &refspecs, &opts));

	FUNC3(ref);
	FUNC0(GIT_ENOTFOUND, FUNC4(&ref, _repo, "refs/heads/master"));

}