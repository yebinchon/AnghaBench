#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct untracked_cache {int /*<<< orphan*/  root; int /*<<< orphan*/  exclude_per_dir; int /*<<< orphan*/  dir_flags; int /*<<< orphan*/  ss_excludes_file; int /*<<< orphan*/  ss_info_exclude; int /*<<< orphan*/  ident; } ;
struct read_data {unsigned char const* data; unsigned char const* end; int index; void* sha1_valid; void* check_only; void* valid; int /*<<< orphan*/  ucd; } ;
struct ondisk_untracked_cache {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {unsigned int rawsz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (unsigned char const**) ; 
 int /*<<< orphan*/  dir_flags ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,struct read_data*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 () ; 
 int FUNC5 (void*,unsigned char const*,int) ; 
 int /*<<< orphan*/  excludes_file_stat ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct untracked_cache*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char const*) ; 
 int /*<<< orphan*/  info_exclude_stat ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned char const*,unsigned char const*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  read_oid ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,struct read_data*) ; 
 int /*<<< orphan*/  read_stat ; 
 int /*<<< orphan*/  set_check_only ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC14 (char const*) ; 
 TYPE_1__* the_hash_algo ; 
 struct untracked_cache* FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (char const*) ; 

struct untracked_cache *FUNC17(const void *data, unsigned long sz)
{
	struct untracked_cache *uc;
	struct read_data rd;
	const unsigned char *next = data, *end = (const unsigned char *)data + sz;
	const char *ident;
	int ident_len;
	ssize_t len;
	const char *exclude_per_dir;
	const unsigned hashsz = the_hash_algo->rawsz;
	const unsigned offset = sizeof(struct ondisk_untracked_cache);
	const unsigned exclude_per_dir_offset = offset + 2 * hashsz;

	if (sz <= 1 || end[-1] != '\0')
		return NULL;
	end--;

	ident_len = FUNC1(&next);
	if (next + ident_len > end)
		return NULL;
	ident = (const char *)next;
	next += ident_len;

	if (next + exclude_per_dir_offset + 1 > end)
		return NULL;

	uc = FUNC15(1, sizeof(*uc));
	FUNC13(&uc->ident, ident_len);
	FUNC12(&uc->ident, ident, ident_len);
	FUNC9(&uc->ss_info_exclude,
		      next + FUNC10(info_exclude_stat),
		      next + offset);
	FUNC9(&uc->ss_excludes_file,
		      next + FUNC10(excludes_file_stat),
		      next + offset + hashsz);
	uc->dir_flags = FUNC8(next + FUNC10(dir_flags));
	exclude_per_dir = (const char *)next + exclude_per_dir_offset;
	uc->exclude_per_dir = FUNC16(exclude_per_dir);
	/* NUL after exclude_per_dir is covered by sizeof(*ouc) */
	next += exclude_per_dir_offset + FUNC14(exclude_per_dir) + 1;
	if (next >= end)
		goto done2;

	len = FUNC1(&next);
	if (next > end || len == 0)
		goto done2;

	rd.valid      = FUNC4();
	rd.check_only = FUNC4();
	rd.sha1_valid = FUNC4();
	rd.data	      = next;
	rd.end	      = end;
	rd.index      = 0;
	FUNC0(rd.ucd, len);

	if (FUNC11(&uc->root, &rd) || rd.index != len)
		goto done;

	next = rd.data;
	len = FUNC5(rd.valid, next, end - next);
	if (len < 0)
		goto done;

	next += len;
	len = FUNC5(rd.check_only, next, end - next);
	if (len < 0)
		goto done;

	next += len;
	len = FUNC5(rd.sha1_valid, next, end - next);
	if (len < 0)
		goto done;

	FUNC2(rd.check_only, set_check_only, &rd);
	rd.data = next + len;
	FUNC2(rd.valid, read_stat, &rd);
	FUNC2(rd.sha1_valid, read_oid, &rd);
	next = rd.data;

done:
	FUNC6(rd.ucd);
	FUNC3(rd.valid);
	FUNC3(rd.check_only);
	FUNC3(rd.sha1_valid);
done2:
	if (next != end) {
		FUNC7(uc);
		uc = NULL;
	}
	return uc;
}