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
struct git_hash_algo {int /*<<< orphan*/  rawsz; int /*<<< orphan*/  (* final_fn ) (unsigned char*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* update_fn ) (int /*<<< orphan*/ *,char*,scalar_t__) ;int /*<<< orphan*/  (* init_fn ) (int /*<<< orphan*/ *) ;} ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  git_hash_ctx ;

/* Variables and functions */
 int GIT_MAX_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct git_hash_algo* hash_algos ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,struct git_hash_algo const*) ; 
 char* FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*,unsigned int) ; 

int FUNC14(int ac, const char **av, int algo)
{
	git_hash_ctx ctx;
	unsigned char hash[GIT_MAX_HEXSZ];
	unsigned bufsz = 8192;
	int binary = 0;
	char *buffer;
	const struct git_hash_algo *algop = &hash_algos[algo];

	if (ac == 2) {
		if (!FUNC8(av[1], "-b"))
			binary = 1;
		else
			bufsz = FUNC9(av[1], NULL, 10) * 1024 * 1024;
	}

	if (!bufsz)
		bufsz = 8192;

	while ((buffer = FUNC6(bufsz)) == NULL) {
		FUNC3(stderr, "bufsz %u is too big, halving...\n", bufsz);
		bufsz /= 2;
		if (bufsz < 1024)
			FUNC0("OOPS");
	}

	algop->init_fn(&ctx);

	while (1) {
		ssize_t sz, this_sz;
		char *cp = buffer;
		unsigned room = bufsz;
		this_sz = 0;
		while (room) {
			sz = FUNC13(0, cp, room);
			if (sz == 0)
				break;
			if (sz < 0)
				FUNC1("test-hash");
			this_sz += sz;
			cp += sz;
			room -= sz;
		}
		if (this_sz == 0)
			break;
		algop->update_fn(&ctx, buffer, this_sz);
	}
	algop->final_fn(hash, &ctx);

	if (binary)
		FUNC4(hash, 1, algop->rawsz, stdout);
	else
		FUNC7(FUNC5(hash, algop));
	FUNC2(0);
}