#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct strbuf {char* buf; scalar_t__ len; } ;
struct stat {unsigned long st_size; } ;
struct repository {int dummy; } ;
struct object_info {int* typep; unsigned long* sizep; unsigned long* disk_sizep; int /*<<< orphan*/  whence; int /*<<< orphan*/ * contentp; int /*<<< orphan*/  type_name; scalar_t__ delta_base_sha1; } ;
struct object_id {int dummy; } ;
typedef  int /*<<< orphan*/  hdr ;
typedef  int /*<<< orphan*/  git_zstream ;

/* Variables and functions */
 int MAX_HEADER_LEN ; 
 int OBJECT_INFO_ALLOW_UNKNOWN_TYPE ; 
 int OBJECT_INFO_QUICK ; 
 int /*<<< orphan*/  OI_LOOSE ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 void* FUNC4 (struct repository*,struct object_id const*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct object_id const*) ; 
 int FUNC7 (char*,struct object_info*,int) ; 
 scalar_t__ FUNC8 (struct repository*,struct object_id const*) ; 
 scalar_t__ FUNC9 (struct repository*,struct object_id const*,struct stat*,char const**) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,void*,unsigned long,char*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,void*,unsigned long,char*,int,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,unsigned long,struct object_id const*) ; 

__attribute__((used)) static int FUNC14(struct repository *r,
			     const struct object_id *oid,
			     struct object_info *oi, int flags)
{
	int status = 0;
	unsigned long mapsize;
	void *map;
	git_zstream stream;
	char hdr[MAX_HEADER_LEN];
	struct strbuf hdrbuf = STRBUF_INIT;
	unsigned long size_scratch;

	if (oi->delta_base_sha1)
		FUNC3(oi->delta_base_sha1);

	/*
	 * If we don't care about type or size, then we don't
	 * need to look inside the object at all. Note that we
	 * do not optimize out the stat call, even if the
	 * caller doesn't care about the disk-size, since our
	 * return value implicitly indicates whether the
	 * object even exists.
	 */
	if (!oi->typep && !oi->type_name && !oi->sizep && !oi->contentp) {
		const char *path;
		struct stat st;
		if (!oi->disk_sizep && (flags & OBJECT_INFO_QUICK))
			return FUNC8(r, oid) ? 0 : -1;
		if (FUNC9(r, oid, &st, &path) < 0)
			return -1;
		if (oi->disk_sizep)
			*oi->disk_sizep = st.st_size;
		return 0;
	}

	map = FUNC4(r, oid, &mapsize);
	if (!map)
		return -1;

	if (!oi->sizep)
		oi->sizep = &size_scratch;

	if (oi->disk_sizep)
		*oi->disk_sizep = mapsize;
	if ((flags & OBJECT_INFO_ALLOW_UNKNOWN_TYPE)) {
		if (FUNC12(&stream, map, mapsize, hdr, sizeof(hdr), &hdrbuf) < 0)
			status = FUNC1(FUNC0("unable to unpack %s header with --allow-unknown-type"),
				       FUNC6(oid));
	} else if (FUNC11(&stream, map, mapsize, hdr, sizeof(hdr)) < 0)
		status = FUNC1(FUNC0("unable to unpack %s header"),
			       FUNC6(oid));
	if (status < 0)
		; /* Do nothing */
	else if (hdrbuf.len) {
		if ((status = FUNC7(hdrbuf.buf, oi, flags)) < 0)
			status = FUNC1(FUNC0("unable to parse %s header with --allow-unknown-type"),
				       FUNC6(oid));
	} else if ((status = FUNC7(hdr, oi, flags)) < 0)
		status = FUNC1(FUNC0("unable to parse %s header"), FUNC6(oid));

	if (status >= 0 && oi->contentp) {
		*oi->contentp = FUNC13(&stream, hdr,
						  *oi->sizep, oid);
		if (!*oi->contentp) {
			FUNC2(&stream);
			status = -1;
		}
	} else
		FUNC2(&stream);

	FUNC5(map, mapsize);
	if (status && oi->typep)
		*oi->typep = status;
	if (oi->sizep == &size_scratch)
		oi->sizep = NULL;
	FUNC10(&hdrbuf);
	oi->whence = OI_LOOSE;
	return (status < 0) ? status : 0;
}