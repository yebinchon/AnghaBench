#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_signature ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ inmemory; } ;
typedef  TYPE_1__ git_rebase ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 scalar_t__ GIT_REBASE_TYPE_MERGE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char const*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char const*,char const*) ; 

int FUNC4(
	git_oid *id,
	git_rebase *rebase,
	const git_signature *author,
	const git_signature *committer,
	const char *message_encoding,
	const char *message)
{
	int error;

	FUNC1(rebase && committer);

	if (rebase->inmemory)
		error = FUNC2(
			id, rebase, author, committer, message_encoding, message);
	else if (rebase->type == GIT_REBASE_TYPE_MERGE)
		error = FUNC3(
			id, rebase, author, committer, message_encoding, message);
	else
		FUNC0();

	return error;
}