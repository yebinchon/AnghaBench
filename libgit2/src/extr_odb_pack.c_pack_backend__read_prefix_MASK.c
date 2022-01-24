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
struct pack_backend {int dummy; } ;
struct git_pack_entry {int /*<<< orphan*/  const sha1; int /*<<< orphan*/  offset; int /*<<< orphan*/  p; } ;
struct TYPE_3__ {size_t len; int /*<<< orphan*/  type; void* data; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ git_rawobj ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb_backend ;
typedef  int /*<<< orphan*/  git_object_t ;

/* Variables and functions */
 size_t GIT_OID_HEXSZ ; 
 size_t GIT_OID_MINPREFIXLEN ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (void**,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC4 (struct git_pack_entry*,struct pack_backend*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static int FUNC5(
	git_oid *out_oid,
	void **buffer_p,
	size_t *len_p,
	git_object_t *type_p,
	git_odb_backend *backend,
	const git_oid *short_oid,
	size_t len)
{
	int error = 0;

	if (len < GIT_OID_MINPREFIXLEN)
		error = FUNC0("prefix length too short");

	else if (len >= GIT_OID_HEXSZ) {
		/* We can fall back to regular read method */
		error = FUNC3(buffer_p, len_p, type_p, backend, short_oid);
		if (!error)
			FUNC1(out_oid, short_oid);
	} else {
		struct git_pack_entry e;
		git_rawobj raw = {NULL};

		if ((error = FUNC4(
				&e, (struct pack_backend *)backend, short_oid, len)) == 0 &&
			(error = FUNC2(&raw, e.p, &e.offset)) == 0)
		{
			*buffer_p = raw.data;
			*len_p = raw.len;
			*type_p = raw.type;
			FUNC1(out_oid, &e.sha1);
		}
	}

	return error;
}