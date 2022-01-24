#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  size_t git_off_t ;
struct TYPE_3__ {int /*<<< orphan*/  id; int /*<<< orphan*/  mode; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_filter_source ;
typedef  int /*<<< orphan*/  git_blob ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (void const*,char,size_t) ; 

__attribute__((used)) static int FUNC12(const git_filter_source *src)
{
	git_repository *repo = FUNC8(src);
	const char *path = FUNC7(src);
	git_index *index;
	const git_index_entry *entry;
	git_blob *blob;
	const void *blobcontent;
	git_off_t blobsize;
	bool found_cr;

	if (!path)
		return false;

	if (FUNC10(&index, repo) < 0) {
		FUNC6();
		return false;
	}

	if (!(entry = FUNC9(index, path, 0)) &&
		!(entry = FUNC9(index, path, 1)))
		return false;

	if (!FUNC0(entry->mode)) /* don't crlf filter non-blobs */
		return true;

	if (FUNC3(&blob, repo, &entry->id) < 0)
		return false;

	blobcontent = FUNC4(blob);
	blobsize    = FUNC5(blob);
	if (!FUNC1(blobsize))
		blobsize = (size_t)-1;

	found_cr = (blobcontent != NULL &&
		blobsize > 0 &&
		FUNC11(blobcontent, '\r', (size_t)blobsize) != NULL);

	FUNC2(blob);
	return found_cr;
}