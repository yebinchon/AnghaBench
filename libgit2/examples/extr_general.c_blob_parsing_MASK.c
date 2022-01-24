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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_blob ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void FUNC6(git_repository *repo)
{
	git_blob *blob;
	git_oid oid;

	FUNC5("\n*Blob Parsing*\n");

	FUNC4(&oid, "1385f264afb75a56a5bec74243be9b367ba4ca08");
	FUNC1(&blob, repo, &oid);

	/**
	 * You can access a buffer with the raw contents of the blob directly.
	 * Note that this buffer may not be contain ASCII data for certain blobs
	 * (e.g. binary files): do not consider the buffer a NULL-terminated
	 * string, and use the `git_blob_rawsize` attribute to find out its exact
	 * size in bytes
	 * */
	FUNC5("Blob Size: %ld\n", (long)FUNC3(blob)); /* 8 */
	FUNC2(blob); /* "content" */

	/**
	 * Free the blob after usage.
	 */
	FUNC0(blob);
}