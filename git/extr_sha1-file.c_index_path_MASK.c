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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct stat {int st_mode; int /*<<< orphan*/  st_size; } ;
struct object_id {int dummy; } ;
struct index_state {int dummy; } ;

/* Variables and functions */
 unsigned int HASH_WRITE_OBJECT ; 
 int /*<<< orphan*/  OBJ_BLOB ; 
 int /*<<< orphan*/  O_RDONLY ; 
 struct strbuf STRBUF_INIT ; 
#define  S_IFDIR 130 
#define  S_IFLNK 129 
 int S_IFMT ; 
#define  S_IFREG 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  blob_type ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (struct index_state*,struct object_id*,int,struct stat*,int /*<<< orphan*/ ,char const*,unsigned int) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,char*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object_id*) ; 

int FUNC10(struct index_state *istate, struct object_id *oid,
	       const char *path, struct stat *st, unsigned flags)
{
	int fd;
	struct strbuf sb = STRBUF_INIT;
	int rc = 0;

	switch (st->st_mode & S_IFMT) {
	case S_IFREG:
		fd = FUNC5(path, O_RDONLY);
		if (fd < 0)
			return FUNC2("open(\"%s\")", path);
		if (FUNC4(istate, oid, fd, st, OBJ_BLOB, path, flags) < 0)
			return FUNC1(FUNC0("%s: failed to insert into database"),
				     path);
		break;
	case S_IFLNK:
		if (FUNC7(&sb, path, st->st_size))
			return FUNC2("readlink(\"%s\")", path);
		if (!(flags & HASH_WRITE_OBJECT))
			FUNC3(sb.buf, sb.len, blob_type, oid);
		else if (FUNC9(sb.buf, sb.len, blob_type, oid))
			rc = FUNC1(FUNC0("%s: failed to insert into database"), path);
		FUNC8(&sb);
		break;
	case S_IFDIR:
		return FUNC6(path, "HEAD", oid);
	default:
		return FUNC1(FUNC0("%s: unsupported file type"), path);
	}
	return rc;
}