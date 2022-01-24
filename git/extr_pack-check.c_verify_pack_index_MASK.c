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
struct packed_git {int index_size; unsigned char* index_data; int /*<<< orphan*/  pack_name; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  git_hash_ctx ;
struct TYPE_2__ {int rawsz; int /*<<< orphan*/  (* final_fn ) (unsigned char*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* update_fn ) (int /*<<< orphan*/ *,unsigned char const*,unsigned int) ;int /*<<< orphan*/  (* init_fn ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int GIT_MAX_RAWSZ ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char const*) ; 
 scalar_t__ FUNC2 (struct packed_git*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* the_hash_algo ; 

int FUNC6(struct packed_git *p)
{
	off_t index_size;
	const unsigned char *index_base;
	git_hash_ctx ctx;
	unsigned char hash[GIT_MAX_RAWSZ];
	int err = 0;

	if (FUNC2(p))
		return FUNC0("packfile %s index not opened", p->pack_name);
	index_size = p->index_size;
	index_base = p->index_data;

	/* Verify SHA1 sum of the index file */
	the_hash_algo->init_fn(&ctx);
	the_hash_algo->update_fn(&ctx, index_base, (unsigned int)(index_size - the_hash_algo->rawsz));
	the_hash_algo->final_fn(hash, &ctx);
	if (!FUNC1(hash, index_base + index_size - the_hash_algo->rawsz))
		err = FUNC0("Packfile index for %s hash mismatch",
			    p->pack_name);
	return err;
}