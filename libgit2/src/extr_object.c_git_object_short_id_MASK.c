#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_14__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_17__ {int* id; TYPE_1__ member_0; } ;
typedef  TYPE_4__ git_oid ;
typedef  int /*<<< orphan*/  git_odb ;
struct TYPE_15__ {int /*<<< orphan*/  id; } ;
struct TYPE_16__ {TYPE_2__ oid; } ;
struct TYPE_18__ {TYPE_3__ cached; } ;
typedef  TYPE_5__ git_object ;
struct TYPE_19__ {int size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_6__ git_buf ;

/* Variables and functions */
 int GIT_ABBREV_DEFAULT ; 
 int /*<<< orphan*/  GIT_CONFIGMAP_ABBREV ; 
 int GIT_EAMBIGUOUS ; 
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_5__ const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,TYPE_4__*) ; 
 int FUNC8 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int**,int /*<<< orphan*/ *,int) ; 

int FUNC11(git_buf *out, const git_object *obj)
{
	git_repository *repo;
	int len = GIT_ABBREV_DEFAULT, error;
	git_oid id = {0};
	git_odb *odb;

	FUNC0(out && obj);

	FUNC2(out);
	repo = FUNC4(obj);

	if ((error = FUNC8(&len, repo, GIT_CONFIGMAP_ABBREV)) < 0)
		return error;

	if ((error = FUNC9(&odb, repo)) < 0)
		return error;

	while (len < GIT_OID_HEXSZ) {
		/* set up short oid */
		FUNC10(&id.id, &obj->cached.oid.id, (len + 1) / 2);
		if (len & 1)
			id.id[len / 2] &= 0xf0;

		error = FUNC5(NULL, odb, &id, len);
		if (error != GIT_EAMBIGUOUS)
			break;

		FUNC3();
		len++;
	}

	if (!error && !(error = FUNC1(out, len + 1))) {
		FUNC7(out->ptr, len + 1, &id);
		out->size = len;
	}

	FUNC6(odb);

	return error;
}