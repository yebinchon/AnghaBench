#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  tree; } ;
typedef  TYPE_1__ tree_reader ;
typedef  int /*<<< orphan*/  git_tree_entry ;
typedef  int /*<<< orphan*/  git_reader ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  scalar_t__ git_off_t ;
typedef  int /*<<< orphan*/  git_filemode_t ;
typedef  int /*<<< orphan*/  git_buf ;
typedef  int /*<<< orphan*/  git_blob ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(
	git_buf *out,
	git_oid *out_id,
	git_filemode_t *out_filemode,
	git_reader *_reader,
	const char *filename)
{
	tree_reader *reader = (tree_reader *)_reader;
	git_tree_entry *tree_entry = NULL;
	git_blob *blob = NULL;
	git_off_t blobsize;
	int error;

	if ((error = FUNC7(&tree_entry, reader->tree, filename)) < 0 ||
	    (error = FUNC2(&blob, FUNC11(reader->tree), FUNC10(tree_entry))) < 0)
		goto done;

	blobsize = FUNC4(blob);
	FUNC0(blobsize);

	if ((error = FUNC5(out, FUNC3(blob), (size_t)blobsize)) < 0)
		goto done;

	if (out_id)
		FUNC6(out_id, FUNC10(tree_entry));

	if (out_filemode)
		*out_filemode = FUNC8(tree_entry);

done:
	FUNC1(blob);
	FUNC9(tree_entry);
	return error;
}