#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
struct git_pack_header {scalar_t__ hdr_signature; int /*<<< orphan*/  hdr_entries; int /*<<< orphan*/  hdr_version; } ;
struct TYPE_8__ {int fd; scalar_t__ size; } ;
struct TYPE_6__ {int len; scalar_t__ data; } ;
struct git_pack_file {int index_version; int pack_fd; scalar_t__ num_objects; int /*<<< orphan*/  lock; TYPE_5__ mwf; int /*<<< orphan*/  pack_name; TYPE_1__ index_map; } ;
typedef  int /*<<< orphan*/  hdr ;
struct TYPE_7__ {struct git_pack_header* id; } ;
typedef  TYPE_2__ git_oid ;
typedef  scalar_t__ git_off_t ;

/* Variables and functions */
 int FD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int GIT_OID_RAWSZ ; 
 int /*<<< orphan*/  PACK_SIGNATURE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int fd_flag ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_5__*) ; 
 int FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (int,struct stat*) ; 
 int FUNC13 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int,struct git_pack_header*,int) ; 
 scalar_t__ FUNC15 (struct git_pack_file*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (char*) ; 

__attribute__((used)) static int FUNC18(struct git_pack_file *p)
{
	struct stat st;
	struct git_pack_header hdr;
	git_oid sha1;
	unsigned char *idx_sha1;

	if (p->index_version == -1 && FUNC15(p) < 0)
		return FUNC7("failed to open packfile", NULL, 0);

	/* if mwf opened by another thread, return now */
	if (FUNC4(&p->lock) < 0)
		return FUNC17("failed to get lock for open");

	if (p->mwf.fd >= 0) {
		FUNC5(&p->lock);
		return 0;
	}

	/* TODO: open with noatime */
	p->mwf.fd = FUNC3(p->pack_name);
	if (p->mwf.fd < 0)
		goto cleanup;

	if (FUNC12(p->mwf.fd, &st) < 0 ||
		FUNC6(&p->mwf) < 0)
		goto cleanup;

	/* If we created the struct before we had the pack we lack size. */
	if (!p->mwf.size) {
		if (!FUNC0(st.st_mode))
			goto cleanup;
		p->mwf.size = (git_off_t)st.st_size;
	} else if (p->mwf.size != st.st_size)
		goto cleanup;

#if 0
	/* We leave these file descriptors open with sliding mmap;
	 * there is no point keeping them open across exec(), though.
	 */
	fd_flag = fcntl(p->mwf.fd, F_GETFD, 0);
	if (fd_flag < 0)
		goto cleanup;

	fd_flag |= FD_CLOEXEC;
	if (fcntl(p->pack_fd, F_SETFD, fd_flag) == -1)
		goto cleanup;
#endif

	/* Verify we recognize this pack file format. */
	if (FUNC14(p->mwf.fd, &hdr, sizeof(hdr)) < 0 ||
		hdr.hdr_signature != FUNC9(PACK_SIGNATURE) ||
		!FUNC16(hdr.hdr_version))
		goto cleanup;

	/* Verify the pack matches its index. */
	if (p->num_objects != FUNC10(hdr.hdr_entries) ||
		FUNC13(p->mwf.fd, p->mwf.size - GIT_OID_RAWSZ, SEEK_SET) == -1 ||
		FUNC14(p->mwf.fd, sha1.id, GIT_OID_RAWSZ) < 0)
		goto cleanup;

	idx_sha1 = ((unsigned char *)p->index_map.data) + p->index_map.len - 40;

	if (FUNC8(&sha1, (git_oid *)idx_sha1) != 0)
		goto cleanup;

	FUNC5(&p->lock);
	return 0;

cleanup:
	FUNC2(GIT_ERROR_OS, "invalid packfile '%s'", p->pack_name);

	if (p->mwf.fd >= 0)
		FUNC11(p->mwf.fd);
	p->mwf.fd = -1;

	FUNC5(&p->lock);

	return -1;
}