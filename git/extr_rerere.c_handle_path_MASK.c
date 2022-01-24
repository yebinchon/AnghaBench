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
struct strbuf {int /*<<< orphan*/  buf; int /*<<< orphan*/  len; } ;
struct rerere_io {int /*<<< orphan*/  (* getline ) (struct strbuf*,struct rerere_io*) ;} ;
typedef  int /*<<< orphan*/  git_hash_ctx ;
struct TYPE_2__ {int /*<<< orphan*/  (* final_fn ) (unsigned char*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* init_fn ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int FUNC0 (struct strbuf*,struct rerere_io*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rerere_io*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct rerere_io*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,struct rerere_io*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* the_hash_algo ; 

__attribute__((used)) static int FUNC9(unsigned char *hash, struct rerere_io *io, int marker_size)
{
	git_hash_ctx ctx;
	struct strbuf buf = STRBUF_INIT, out = STRBUF_INIT;
	int has_conflicts = 0;
	if (hash)
		the_hash_algo->init_fn(&ctx);

	while (!io->getline(&buf, io)) {
		if (FUNC1(buf.buf, '<', marker_size)) {
			has_conflicts = FUNC0(&out, io, marker_size,
							hash ? &ctx : NULL);
			if (has_conflicts < 0)
				break;
			FUNC2(out.buf, out.len, io);
			FUNC5(&out);
		} else
			FUNC3(buf.buf, io);
	}
	FUNC4(&buf);
	FUNC4(&out);

	if (hash)
		the_hash_algo->final_fn(hash, &ctx);

	return has_conflicts;
}