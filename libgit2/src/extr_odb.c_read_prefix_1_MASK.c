#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;
typedef  struct TYPE_29__   TYPE_17__ ;

/* Type definitions */
struct TYPE_31__ {void* data; int /*<<< orphan*/  type; int /*<<< orphan*/  len; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ git_rawobj ;
struct TYPE_30__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_32__ {TYPE_1__ member_0; } ;
typedef  TYPE_3__ git_oid ;
typedef  int /*<<< orphan*/  git_odb_object ;
struct TYPE_33__ {int (* read_prefix ) (TYPE_3__*,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*,TYPE_3__ const*,size_t) ;int /*<<< orphan*/  refresh; } ;
typedef  TYPE_4__ git_odb_backend ;
struct TYPE_29__ {size_t length; } ;
struct TYPE_34__ {TYPE_17__ backends; } ;
typedef  TYPE_5__ git_odb ;
struct TYPE_35__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_6__ git_buf ;
struct TYPE_36__ {TYPE_4__* backend; } ;
typedef  TYPE_7__ backend_internal ;

/* Variables and functions */
 TYPE_6__ GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int GIT_PASSTHROUGH ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_3__*,TYPE_3__*) ; 
 scalar_t__ git_odb__strict_hash_verification ; 
 int FUNC6 (TYPE_3__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 TYPE_7__* FUNC10 (TYPE_17__*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC13 (TYPE_3__*,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*,TYPE_3__ const*,size_t) ; 

__attribute__((used)) static int FUNC14(git_odb_object **out, git_odb *db,
		const git_oid *key, size_t len, bool only_refreshed)
{
	size_t i;
	int error = 0;
	git_oid found_full_oid = {{0}};
	git_rawobj raw = {0};
	void *data = NULL;
	bool found = false;
	git_odb_object *object;

	for (i = 0; i < db->backends.length; ++i) {
		backend_internal *internal = FUNC10(&db->backends, i);
		git_odb_backend *b = internal->backend;

		if (only_refreshed && !b->refresh)
			continue;

		if (b->read_prefix != NULL) {
			git_oid full_oid;
			error = b->read_prefix(&full_oid, &raw.data, &raw.len, &raw.type, b, key, len);

			if (error == GIT_ENOTFOUND || error == GIT_PASSTHROUGH) {
				error = 0;
				continue;
			}

			if (error)
				goto out;

			FUNC0(data);
			data = raw.data;

			if (found && FUNC7(&full_oid, &found_full_oid)) {
				git_buf buf = GIT_BUF_INIT;

				FUNC2(&buf, "multiple matches for prefix: %s",
					FUNC9(&full_oid));
				FUNC2(&buf, " %s",
					FUNC9(&found_full_oid));

				error = FUNC4(buf.ptr);
				FUNC1(&buf);
				goto out;
			}

			found_full_oid = full_oid;
			found = true;
		}
	}

	if (!found)
		return GIT_ENOTFOUND;

	if (git_odb__strict_hash_verification) {
		git_oid hash;

		if ((error = FUNC6(&hash, raw.data, raw.len, raw.type)) < 0)
			goto out;

		if (!FUNC8(&found_full_oid, &hash)) {
			error = FUNC5(&found_full_oid, &hash);
			goto out;
		}
	}

	if ((object = FUNC12(&found_full_oid, &raw)) == NULL) {
		error = -1;
		goto out;
	}

	*out = FUNC3(FUNC11(db), object);

out:
	if (error)
		FUNC0(raw.data);

	return error;
}