#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  data; int /*<<< orphan*/  type; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ git_rawobj ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb_object ;
struct TYPE_14__ {int (* read ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/  const*) ;int /*<<< orphan*/  refresh; } ;
typedef  TYPE_2__ git_odb_backend ;
struct TYPE_12__ {size_t length; } ;
struct TYPE_15__ {TYPE_11__ backends; } ;
typedef  TYPE_3__ git_odb ;
struct TYPE_16__ {TYPE_2__* backend; } ;
typedef  TYPE_4__ backend_internal ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int GIT_PASSTHROUGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ git_odb__strict_hash_verification ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC6 (TYPE_11__*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int FUNC9 (int*,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC11(git_odb_object **out, git_odb *db, const git_oid *id,
		bool only_refreshed)
{
	size_t i;
	git_rawobj raw;
	git_odb_object *object;
	git_oid hashed;
	bool found = false;
	int error = 0;

	if (!only_refreshed) {
		if ((error = FUNC9(&found, &raw, id)) < 0)
			return error;
	}

	for (i = 0; i < db->backends.length && !found; ++i) {
		backend_internal *internal = FUNC6(&db->backends, i);
		git_odb_backend *b = internal->backend;

		if (only_refreshed && !b->refresh)
			continue;

		if (b->read != NULL) {
			error = b->read(&raw.data, &raw.len, &raw.type, b, id);
			if (error == GIT_PASSTHROUGH || error == GIT_ENOTFOUND)
				continue;

			if (error < 0)
				return error;

			found = true;
		}
	}

	if (!found)
		return GIT_ENOTFOUND;

	if (git_odb__strict_hash_verification) {
		if ((error = FUNC4(&hashed, raw.data, raw.len, raw.type)) < 0)
			goto out;

		if (!FUNC5(id, &hashed)) {
			error = FUNC3(id, &hashed);
			goto out;
		}
	}

	FUNC2();
	if ((object = FUNC8(id, &raw)) == NULL) {
		error = -1;
		goto out;
	}

	*out = FUNC1(FUNC7(db), object);

out:
	if (error)
		FUNC0(raw.data);
	return error;
}