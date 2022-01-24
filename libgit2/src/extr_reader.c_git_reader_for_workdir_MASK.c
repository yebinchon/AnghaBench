#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  read; } ;
struct TYPE_7__ {int /*<<< orphan*/  index; int /*<<< orphan*/ * repo; TYPE_1__ reader; } ;
typedef  TYPE_2__ workdir_reader ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  workdir_reader_read ; 

int FUNC5(
	git_reader **out,
	git_repository *repo,
	bool validate_index)
{
	workdir_reader *reader;
	int error;

	FUNC1(out && repo);

	reader = FUNC2(1, sizeof(workdir_reader));
	FUNC0(reader);

	reader->reader.read = workdir_reader_read;
	reader->repo = repo;

	if (validate_index &&
	    (error = FUNC4(&reader->index, repo)) < 0) {
		FUNC3(reader);
		return error;
	}

	*out = (git_reader *)reader;
	return 0;
}