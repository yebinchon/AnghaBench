#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_size; } ;
struct TYPE_3__ {int /*<<< orphan*/  hash; } ;
struct index_state {TYPE_1__ oid; int /*<<< orphan*/  initialized; } ;
struct cache_header {int dummy; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_4__ {scalar_t__ rawsz; } ;

/* Variables and functions */
 int GIT_MAX_RAWSZ ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,unsigned char*,scalar_t__,scalar_t__) ; 
 TYPE_2__* the_hash_algo ; 

__attribute__((used)) static int FUNC5(const struct index_state *istate, const char *path)
{
	int fd;
	ssize_t n;
	struct stat st;
	unsigned char hash[GIT_MAX_RAWSZ];

	if (!istate->initialized)
		return 0;

	fd = FUNC3(path, O_RDONLY);
	if (fd < 0)
		return 0;

	if (FUNC1(fd, &st))
		goto out;

	if (st.st_size < sizeof(struct cache_header) + the_hash_algo->rawsz)
		goto out;

	n = FUNC4(fd, hash, the_hash_algo->rawsz, st.st_size - the_hash_algo->rawsz);
	if (n != the_hash_algo->rawsz)
		goto out;

	if (!FUNC2(istate->oid.hash, hash))
		goto out;

	FUNC0(fd);
	return 1;

out:
	FUNC0(fd);
	return 0;
}