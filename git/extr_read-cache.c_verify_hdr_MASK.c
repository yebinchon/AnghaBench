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
struct cache_header {scalar_t__ hdr_signature; int /*<<< orphan*/  hdr_version; } ;
typedef  int /*<<< orphan*/  git_hash_ctx ;
struct TYPE_2__ {int rawsz; int /*<<< orphan*/  (* final_fn ) (unsigned char*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* update_fn ) (int /*<<< orphan*/ *,struct cache_header const*,int) ;int /*<<< orphan*/  (* init_fn ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_SIGNATURE ; 
 int GIT_MAX_RAWSZ ; 
 int INDEX_FORMAT_LB ; 
 int INDEX_FORMAT_UB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct cache_header const*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* the_hash_algo ; 
 int /*<<< orphan*/  verify_index_checksum ; 

__attribute__((used)) static int FUNC8(const struct cache_header *hdr, unsigned long size)
{
	git_hash_ctx c;
	unsigned char hash[GIT_MAX_RAWSZ];
	int hdr_version;

	if (hdr->hdr_signature != FUNC3(CACHE_SIGNATURE))
		return FUNC1(FUNC0("bad signature 0x%08x"), hdr->hdr_signature);
	hdr_version = FUNC4(hdr->hdr_version);
	if (hdr_version < INDEX_FORMAT_LB || INDEX_FORMAT_UB < hdr_version)
		return FUNC1(FUNC0("bad index version %d"), hdr_version);

	if (!verify_index_checksum)
		return 0;

	the_hash_algo->init_fn(&c);
	the_hash_algo->update_fn(&c, hdr, size - the_hash_algo->rawsz);
	the_hash_algo->final_fn(hash, &c);
	if (!FUNC2(hash, (unsigned char *)hdr + size - the_hash_algo->rawsz))
		return FUNC1(FUNC0("bad index file sha1 signature"));
	return 0;
}