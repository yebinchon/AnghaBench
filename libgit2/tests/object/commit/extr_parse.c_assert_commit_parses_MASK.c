#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  sign; int /*<<< orphan*/  offset; int /*<<< orphan*/  time; } ;
struct TYPE_18__ {TYPE_2__ when; int /*<<< orphan*/  email; int /*<<< orphan*/  name; } ;
typedef  TYPE_6__ git_signature ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_17__ {int /*<<< orphan*/  size; } ;
struct TYPE_19__ {int /*<<< orphan*/  object; TYPE_5__ parent_ids; int /*<<< orphan*/  tree_id; int /*<<< orphan*/  message_encoding; int /*<<< orphan*/  raw_message; TYPE_4__* committer; TYPE_11__* author; } ;
typedef  TYPE_7__ git_commit ;
struct TYPE_15__ {size_t time; size_t offset; size_t sign; } ;
struct TYPE_16__ {char const* name; char const* email; TYPE_3__ when; } ;
struct TYPE_13__ {size_t time; size_t offset; size_t sign; } ;
struct TYPE_12__ {char const* name; char const* email; TYPE_1__ when; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__**,char const*) ; 
 size_t FUNC12 (char const*) ; 

__attribute__((used)) static void FUNC13(const char *data, size_t datalen,
	const char *expected_treeid,
	const char *expected_author,
	const char *expected_committer,
	const char *expected_encoding,
	const char *expected_message,
	size_t expected_parents)
{
	git_commit *commit;
	if (!datalen)
		datalen = FUNC12(data);
	FUNC5(FUNC7((git_object **) &commit, data, datalen, GIT_OBJECT_COMMIT));

	if (expected_author) {
		git_signature *author;
		FUNC5(FUNC11(&author, expected_author));
		FUNC0(FUNC9(author, commit->author));
		FUNC4(author->name, commit->author->name);
		FUNC4(author->email, commit->author->email);
		FUNC1(author->when.time, commit->author->when.time);
		FUNC1(author->when.offset, commit->author->when.offset);
		FUNC1(author->when.sign, commit->author->when.sign);
		FUNC10(author);
	}

	if (expected_committer) {
		git_signature *committer;
		FUNC5(FUNC11(&committer, expected_committer));
		FUNC4(committer->name, commit->committer->name);
		FUNC4(committer->email, commit->committer->email);
		FUNC1(committer->when.time, commit->committer->when.time);
		FUNC1(committer->when.offset, commit->committer->when.offset);
		FUNC1(committer->when.sign, commit->committer->when.sign);
		FUNC10(committer);
	}

	if (expected_encoding)
		FUNC4(commit->message_encoding, expected_encoding);
	else
		FUNC3(commit->message_encoding, NULL);

	if (expected_message)
		FUNC4(commit->raw_message, expected_message);
	else
		FUNC3(commit->message_encoding, NULL);

	if (expected_treeid) {
		git_oid tree_oid;
		FUNC5(FUNC8(&tree_oid, expected_treeid));
		FUNC2(&tree_oid, &commit->tree_id);
	}

	FUNC1(commit->parent_ids.size, expected_parents);

	FUNC6(&commit->object);
}