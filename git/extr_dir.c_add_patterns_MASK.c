#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_size; } ;
struct pattern_list {int dummy; } ;
struct oid_stat {int valid; int /*<<< orphan*/  stat; int /*<<< orphan*/  oid; } ;
struct index_state {TYPE_2__** cache; } ;
struct TYPE_5__ {int /*<<< orphan*/  oid; } ;
struct TYPE_4__ {int /*<<< orphan*/ * empty_blob; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,char const*,int,struct pattern_list*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t,char*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct index_state*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct index_state*,int /*<<< orphan*/ *,struct stat*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (char const*,int /*<<< orphan*/ ) ; 
 size_t FUNC12 (int,char*,size_t) ; 
 int FUNC13 (struct index_state*,char const*,size_t*,char**,struct oid_stat*) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 
 TYPE_1__* the_hash_algo ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (struct index_state*,char const*) ; 
 char* FUNC17 (size_t) ; 
 size_t FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(const char *fname, const char *base, int baselen,
			struct pattern_list *pl, struct index_state *istate,
			struct oid_stat *oid_stat)
{
	struct stat st;
	int r;
	int fd;
	size_t size = 0;
	char *buf;

	fd = FUNC11(fname, O_RDONLY);
	if (fd < 0 || FUNC6(fd, &st) < 0) {
		if (fd < 0)
			FUNC15(fname);
		else
			FUNC3(fd);
		if (!istate)
			return -1;
		r = FUNC13(istate, fname,
						       &size, &buf,
						       oid_stat);
		if (r != 1)
			return r;
	} else {
		size = FUNC18(st.st_size);
		if (size == 0) {
			if (oid_stat) {
				FUNC4(&oid_stat->stat, &st);
				FUNC10(&oid_stat->oid, the_hash_algo->empty_blob);
				oid_stat->valid = 1;
			}
			FUNC3(fd);
			return 0;
		}
		buf = FUNC17(size);
		if (FUNC12(fd, buf, size) != size) {
			FUNC5(buf);
			FUNC3(fd);
			return -1;
		}
		buf[size++] = '\n';
		FUNC3(fd);
		if (oid_stat) {
			int pos;
			if (oid_stat->valid &&
			    !FUNC9(istate, &oid_stat->stat, &st))
				; /* no content change, ss->sha1 still good */
			else if (istate &&
				 (pos = FUNC8(istate, fname, FUNC14(fname))) >= 0 &&
				 !FUNC1(istate->cache[pos]) &&
				 FUNC2(istate->cache[pos]) &&
				 !FUNC16(istate, fname))
				FUNC10(&oid_stat->oid,
				       &istate->cache[pos]->oid);
			else
				FUNC7(buf, size, "blob",
						 &oid_stat->oid);
			FUNC4(&oid_stat->stat, &st);
			oid_stat->valid = 1;
		}
	}

	FUNC0(buf, size, base, baselen, pl);
	return 0;
}