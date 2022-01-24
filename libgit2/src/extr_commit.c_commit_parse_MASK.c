#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  email; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_signature ;
typedef  TYPE_1__ git_oid ;
struct TYPE_13__ {TYPE_1__* raw_message; TYPE_1__* raw_header; TYPE_1__* message_encoding; TYPE_1__* committer; TYPE_1__* author; int /*<<< orphan*/  parent_ids; TYPE_1__ tree_id; } ;
typedef  TYPE_3__ git_commit ;

/* Variables and functions */
 unsigned int GIT_COMMIT_PARSE_QUICK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIT_ERROR_OBJECT ; 
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 
 scalar_t__ FUNC5 (char const*,int,char*) ; 
 TYPE_1__* FUNC6 (char*) ; 
 void* FUNC7 (char const*,int) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (TYPE_1__*,char const**,char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_1__*,char const**,char const*,char*,char) ; 
 int FUNC14 (char*) ; 

__attribute__((used)) static int FUNC15(git_commit *commit, const char *data, size_t size, unsigned int flags)
{
	const char *buffer_start = data, *buffer;
	const char *buffer_end = buffer_start + size;
	git_oid parent_id;
	size_t header_len;
	git_signature dummy_sig;

	FUNC2(commit && data);

	buffer = buffer_start;

	/* Allocate for one, which will allow not to realloc 90% of the time  */
	FUNC9(commit->parent_ids, 1);
	FUNC1(commit->parent_ids);

	/* The tree is always the first field */
	if (!(flags & GIT_COMMIT_PARSE_QUICK)) {
	    if (FUNC11(&commit->tree_id, &buffer, buffer_end, "tree ") < 0)
			goto bad_buffer;
	} else {
		size_t tree_len = FUNC14("tree ") + GIT_OID_HEXSZ + 1;
		if (buffer + tree_len > buffer_end)
			goto bad_buffer;
		buffer += tree_len;
	}

	/*
	 * TODO: commit grafts!
	 */

	while (FUNC11(&parent_id, &buffer, buffer_end, "parent ") == 0) {
		git_oid *new_id = FUNC8(commit->parent_ids);
		FUNC0(new_id);

		FUNC12(new_id, &parent_id);
	}

	if (!(flags & GIT_COMMIT_PARSE_QUICK)) {
		commit->author = FUNC4(sizeof(git_signature));
		FUNC0(commit->author);

		if (FUNC13(commit->author, &buffer, buffer_end, "author ", '\n') < 0)
			return -1;
	}

	/* Some tools create multiple author fields, ignore the extra ones */
	while (!FUNC5(buffer, buffer_end - buffer, "author ")) {
		if (FUNC13(&dummy_sig, &buffer, buffer_end, "author ", '\n') < 0)
			return -1;

		FUNC3(dummy_sig.name);
		FUNC3(dummy_sig.email);
	}

	/* Always parse the committer; we need the commit time */
	commit->committer = FUNC4(sizeof(git_signature));
	FUNC0(commit->committer);

	if (FUNC13(commit->committer, &buffer, buffer_end, "committer ", '\n') < 0)
		return -1;

	if (flags & GIT_COMMIT_PARSE_QUICK)
		return 0;

	/* Parse add'l header entries */
	while (buffer < buffer_end) {
		const char *eoln = buffer;
		if (buffer[-1] == '\n' && buffer[0] == '\n')
			break;

		while (eoln < buffer_end && *eoln != '\n')
			++eoln;

		if (FUNC5(buffer, buffer_end - buffer, "encoding ") == 0) {
			buffer += FUNC14("encoding ");

			commit->message_encoding = FUNC7(buffer, eoln - buffer);
			FUNC0(commit->message_encoding);
		}

		if (eoln < buffer_end && *eoln == '\n')
			++eoln;
		buffer = eoln;
	}

	header_len = buffer - buffer_start;
	commit->raw_header = FUNC7(buffer_start, header_len);
	FUNC0(commit->raw_header);

	/* point "buffer" to data after header, +1 for the final LF */
	buffer = buffer_start + header_len + 1;

	/* extract commit message */
	if (buffer <= buffer_end)
		commit->raw_message = FUNC7(buffer, buffer_end - buffer);
	else
		commit->raw_message = FUNC6("");
	FUNC0(commit->raw_message);

	return 0;

bad_buffer:
	FUNC10(GIT_ERROR_OBJECT, "failed to parse bad commit object");
	return -1;
}