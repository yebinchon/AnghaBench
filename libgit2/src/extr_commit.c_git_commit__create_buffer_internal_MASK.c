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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_buf ;
typedef  int /*<<< orphan*/  git_array_oid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC9(
	git_buf *out,
	const git_signature *author,
	const git_signature *committer,
	const char *message_encoding,
	const char *message,
	const git_oid *tree,
	git_array_oid_t *parents)
{
	size_t i = 0;
	const git_oid *parent;

	FUNC0(out && tree);

	FUNC7(out, "tree ", tree);

	for (i = 0; i < FUNC2(*parents); i++) {
		parent = FUNC1(*parents, i);
		FUNC7(out, "parent ", parent);
	}

	FUNC8(out, "author ", author);
	FUNC8(out, "committer ", committer);

	if (message_encoding != NULL)
		FUNC4(out, "encoding %s\n", message_encoding);

	FUNC5(out, '\n');

	if (FUNC6(out, message) < 0)
		goto on_error;

	return 0;

on_error:
	FUNC3(out);
	return -1;
}