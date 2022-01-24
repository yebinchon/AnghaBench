#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_size; } ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_8__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_2__ git_checkout_options ;
typedef  int /*<<< orphan*/  git_blob ;

/* Variables and functions */
 size_t CHUNKSIZE ; 
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,size_t) ; 

__attribute__((used)) static void FUNC18(size_t numchunks)
{
	git_index *index;
	const git_index_entry *entry;
	git_blob *blob;
	struct stat st;
	git_checkout_options checkout_opts = GIT_CHECKOUT_OPTIONS_INIT;

	checkout_opts.checkout_strategy = GIT_CHECKOUT_FORCE;

	FUNC3(
		"empty_standard_repo/.gitattributes",
		"* compress\n");

	/* write a file to disk */
	FUNC17("streamed_file", numchunks);

	/* place it in the index */
	FUNC4(FUNC14(&index, g_repo));
	FUNC4(FUNC10(index, "streamed_file"));
	FUNC4(FUNC13(index));

	/* ensure it was appropriately compressed */
	FUNC0(entry = FUNC12(index, "streamed_file", 0));

	FUNC4(FUNC7(&blob, g_repo, &entry->id));
	FUNC1(numchunks, FUNC8(blob));

	/* check the file back out */
	FUNC5(FUNC16("empty_standard_repo/streamed_file"));
	FUNC4(FUNC9(g_repo, index, &checkout_opts));

	/* ensure it was decompressed */
	FUNC5(FUNC15("empty_standard_repo/streamed_file", &st));
	FUNC2((numchunks * CHUNKSIZE), st.st_size);

	FUNC11(index);
	FUNC6(blob);
}