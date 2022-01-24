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
struct git_hash_algo {char* name; } ;
typedef  int /*<<< orphan*/  git_hash_ctx ;
typedef  double clock_t ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 double CLOCKS_PER_SEC ; 
 int GIT_HASH_NALGOS ; 
 int GIT_MAX_RAWSZ ; 
 double NUM_SECONDS ; 
 double FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct git_hash_algo const*,int /*<<< orphan*/ *,unsigned char*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 struct git_hash_algo* hash_algos ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 void* FUNC8 (int,unsigned int) ; 

int FUNC9(int ac, const char **av)
{
	git_hash_ctx ctx;
	unsigned char hash[GIT_MAX_RAWSZ];
	clock_t initial, start, end;
	unsigned bufsizes[] = { 64, 256, 1024, 8192, 16384 };
	int i;
	void *p;
	const struct git_hash_algo *algo = NULL;

	if (ac == 2) {
		for (i = 1; i < GIT_HASH_NALGOS; i++) {
			if (!FUNC7(av[1], hash_algos[i].name)) {
				algo = &hash_algos[i];
				break;
			}
		}
	}
	if (!algo)
		FUNC3("usage: test-tool hash-speed algo_name");

	/* Use this as an offset to make overflow less likely. */
	initial = FUNC1();

	FUNC6("algo: %s\n", algo->name);

	for (i = 0; i < FUNC0(bufsizes); i++) {
		unsigned long j, kb;
		double kb_per_sec;
		p = FUNC8(1, bufsizes[i]);
		start = end = FUNC1() - initial;
		for (j = 0; ((end - start) / CLOCKS_PER_SEC) < NUM_SECONDS; j++) {
			FUNC2(algo, &ctx, hash, p, bufsizes[i]);

			/*
			 * Only check elapsed time every 128 iterations to avoid
			 * dominating the runtime with system calls.
			 */
			if (!(j & 127))
				end = FUNC1() - initial;
		}
		kb = j * bufsizes[i];
		kb_per_sec = kb / (1024 * ((double)end - start) / CLOCKS_PER_SEC);
		FUNC6("size %u: %lu iters; %lu KiB; %0.2f KiB/s\n", bufsizes[i], j, kb, kb_per_sec);
		FUNC5(p);
	}

	FUNC4(0);
}