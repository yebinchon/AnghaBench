#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  buf; } ;
struct tempfile {TYPE_1__ filename; } ;
struct split_index {TYPE_2__* base; int /*<<< orphan*/  base_oid; } ;
struct index_state {struct split_index* split_index; } ;
struct TYPE_4__ {int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,struct tempfile*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tempfile*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct index_state*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct tempfile**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct index_state *istate,
			      struct tempfile **temp)
{
	struct split_index *si = istate->split_index;
	int ret;

	FUNC7(istate);

	FUNC11("index", "shared/do_write_index",
				   the_repository, "%s", (*temp)->filename.buf);
	ret = FUNC3(si->base, *temp, 1);
	FUNC12("index", "shared/do_write_index",
				   the_repository, "%s", (*temp)->filename.buf);

	if (ret)
		return ret;
	ret = FUNC1(FUNC5(*temp));
	if (ret) {
		FUNC4(FUNC0("cannot fix permission bits on '%s'"), FUNC5(*temp));
		return ret;
	}
	ret = FUNC10(temp,
			      FUNC6("sharedindex.%s", FUNC8(&si->base->oid)));
	if (!ret) {
		FUNC9(&si->base_oid, &si->base->oid);
		FUNC2(FUNC8(&si->base->oid));
	}

	return ret;
}