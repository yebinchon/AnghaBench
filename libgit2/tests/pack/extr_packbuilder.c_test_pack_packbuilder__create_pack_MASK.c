#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_indexer_progress ;
typedef  int /*<<< orphan*/  git_hash_ctx ;
struct TYPE_7__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  _indexer ; 
 int /*<<< orphan*/  _packbuilder ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  feed_indexer ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 

void FUNC16(void)
{
	git_indexer_progress stats;
	git_buf buf = GIT_BUF_INIT, path = GIT_BUF_INIT;
	git_hash_ctx ctx;
	git_oid hash;
	char hex[GIT_OID_HEXSZ+1]; hex[GIT_OID_HEXSZ] = '\0';

	FUNC15();

	FUNC1(FUNC12(&_indexer, ".", 0, NULL, NULL));
	FUNC1(FUNC14(_packbuilder, feed_indexer, &stats));
	FUNC1(FUNC10(_indexer, &stats));

	FUNC13(hex, FUNC11(_indexer));
	FUNC4(&path, "pack-%s.pack", hex);

	/*
	 * By default, packfiles are created with only one thread.
	 * Therefore we can predict the object ordering and make sure
	 * we create exactly the same pack as git.git does when *not*
	 * reusing existing deltas (as libgit2).
	 *
	 * $ cd tests/resources/testrepo.git
	 * $ git rev-list --objects HEAD | \
	 * 	git pack-objects -q --no-reuse-delta --threads=1 pack
	 * $ sha1sum pack-7f5fa362c664d68ba7221259be1cbd187434b2f0.pack
	 * 5d410bdf97cf896f9007681b92868471d636954b
	 *
	 */

	FUNC1(FUNC5(&buf, FUNC2(&path)));

	FUNC1(FUNC7(&ctx));
	FUNC1(FUNC9(&ctx, buf.ptr, buf.size));
	FUNC1(FUNC8(&hash, &ctx));
	FUNC6(&ctx);

	FUNC3(&path);
	FUNC3(&buf);

	FUNC13(hex, &hash);

	FUNC0(hex, "5d410bdf97cf896f9007681b92868471d636954b");
}