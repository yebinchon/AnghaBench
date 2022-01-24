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
typedef  int /*<<< orphan*/  loose_backend ;
struct TYPE_3__ {size_t len; int /*<<< orphan*/  type; void* data; } ;
typedef  TYPE_1__ git_rawobj ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb_backend ;
typedef  int /*<<< orphan*/  git_object_t ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 size_t GIT_OID_HEXSZ ; 
 size_t GIT_OID_MINPREFIXLEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC4 (void**,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(
	git_oid *out_oid,
	void **buffer_p,
	size_t *len_p,
	git_object_t *type_p,
	git_odb_backend *backend,
	const git_oid *short_oid,
	size_t len)
{
	int error = 0;

	FUNC0(len >= GIT_OID_MINPREFIXLEN && len <= GIT_OID_HEXSZ);

	if (len == GIT_OID_HEXSZ) {
		/* We can fall back to regular read method */
		error = FUNC4(buffer_p, len_p, type_p, backend, short_oid);
		if (!error)
			FUNC2(out_oid, short_oid);
	} else {
		git_buf object_path = GIT_BUF_INIT;
		git_rawobj raw;

		FUNC0(backend && short_oid);

		if ((error = FUNC3(&object_path, out_oid,
				(loose_backend *)backend, short_oid, len)) == 0 &&
			(error = FUNC5(&raw, &object_path)) == 0)
		{
			*buffer_p = raw.data;
			*len_p = raw.len;
			*type_p = raw.type;
		}

		FUNC1(&object_path);
	}

	return error;
}