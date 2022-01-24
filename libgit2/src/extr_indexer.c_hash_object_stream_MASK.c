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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  git_packfile_stream ;
struct TYPE_3__ {int /*<<< orphan*/  objbuf; int /*<<< orphan*/  hash_ctx; int /*<<< orphan*/  entry_data; scalar_t__ do_verify; } ;
typedef  TYPE_1__ git_indexer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(git_indexer*idx, git_packfile_stream *stream)
{
	ssize_t read;

	FUNC0(idx && stream);

	do {
		if ((read = FUNC3(stream, idx->objbuf, sizeof(idx->objbuf))) < 0)
			break;

		if (idx->do_verify)
			FUNC1(&idx->entry_data, idx->objbuf, read);

		FUNC2(&idx->hash_ctx, idx->objbuf, read);
	} while (read > 0);

	if (read < 0)
		return (int)read;

	return 0;
}