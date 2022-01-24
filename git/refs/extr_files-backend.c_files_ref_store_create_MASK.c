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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct ref_store {int dummy; } ;
struct files_ref_store {unsigned int store_flags; int /*<<< orphan*/  gitcommondir; int /*<<< orphan*/  gitdir; int /*<<< orphan*/  packed_ref_store; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct ref_store*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  refs_be_files ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 struct files_ref_store* FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static struct ref_store *FUNC9(const char *gitdir,
						unsigned int flags)
{
	struct files_ref_store *refs = FUNC7(1, sizeof(*refs));
	struct ref_store *ref_store = (struct ref_store *)refs;
	struct strbuf sb = STRBUF_INIT;

	FUNC0(ref_store, &refs_be_files);
	refs->store_flags = flags;

	refs->gitdir = FUNC8(gitdir);
	FUNC2(&sb, gitdir);
	refs->gitcommondir = FUNC5(&sb, NULL);
	FUNC4(&sb, "%s/packed-refs", refs->gitcommondir);
	refs->packed_ref_store = FUNC3(sb.buf, flags);
	FUNC6(&sb);

	FUNC1("files-backend $GIT_DIR",
			      &refs->gitdir);
	FUNC1("files-backend $GIT_COMMONDIR",
			      &refs->gitcommondir);

	return ref_store;
}