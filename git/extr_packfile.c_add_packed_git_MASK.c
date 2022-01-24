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
struct stat {int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mode; } ;
struct packed_git {int pack_keep; int pack_promisor; int pack_local; int /*<<< orphan*/  hash; int /*<<< orphan*/  mtime; int /*<<< orphan*/  pack_size; scalar_t__ pack_name; } ;
struct TYPE_2__ {size_t hexsz; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct packed_git* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct packed_git*) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char const*,size_t) ; 
 size_t FUNC7 (size_t,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (scalar_t__,struct stat*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,size_t*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 TYPE_1__* the_hash_algo ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,size_t,char*) ; 

struct packed_git *FUNC12(const char *path, size_t path_len, int local)
{
	struct stat st;
	size_t alloc;
	struct packed_git *p;

	/*
	 * Make sure a corresponding .pack file exists and that
	 * the index looks sane.
	 */
	if (!FUNC9(path, &path_len, ".idx"))
		return NULL;

	/*
	 * ".promisor" is long enough to hold any suffix we're adding (and
	 * the use xsnprintf double-checks that)
	 */
	alloc = FUNC7(path_len, FUNC10(".promisor"), 1);
	p = FUNC2(alloc);
	FUNC6(p->pack_name, path, path_len);

	FUNC11(p->pack_name + path_len, alloc - path_len, ".keep");
	if (!FUNC1(p->pack_name, F_OK))
		p->pack_keep = 1;

	FUNC11(p->pack_name + path_len, alloc - path_len, ".promisor");
	if (!FUNC1(p->pack_name, F_OK))
		p->pack_promisor = 1;

	FUNC11(p->pack_name + path_len, alloc - path_len, ".pack");
	if (FUNC8(p->pack_name, &st) || !FUNC0(st.st_mode)) {
		FUNC3(p);
		return NULL;
	}

	/* ok, it looks sane as far as we can check without
	 * actually mapping the pack file.
	 */
	p->pack_size = st.st_size;
	p->pack_local = local;
	p->mtime = st.st_mtime;
	if (path_len < the_hash_algo->hexsz ||
	    FUNC4(path + path_len - the_hash_algo->hexsz, p->hash))
		FUNC5(p->hash);
	return p;
}