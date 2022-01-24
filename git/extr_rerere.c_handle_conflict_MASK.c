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
struct strbuf {char* buf; scalar_t__ len; } ;
struct rerere_io {int /*<<< orphan*/  (* getline ) (struct strbuf*,struct rerere_io*) ;} ;
typedef  int /*<<< orphan*/  git_hash_ctx ;
struct TYPE_2__ {int /*<<< orphan*/  (* update_fn ) (int /*<<< orphan*/ *,char*,scalar_t__) ;} ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,struct strbuf*) ; 
 scalar_t__ FUNC3 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,struct rerere_io*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 TYPE_1__* the_hash_algo ; 

__attribute__((used)) static int FUNC9(struct strbuf *out, struct rerere_io *io,
			   int marker_size, git_hash_ctx *ctx)
{
	enum {
		RR_SIDE_1 = 0, RR_SIDE_2, RR_ORIGINAL
	} hunk = RR_SIDE_1;
	struct strbuf one = STRBUF_INIT, two = STRBUF_INIT;
	struct strbuf buf = STRBUF_INIT, conflict = STRBUF_INIT;
	int has_conflicts = -1;

	while (!io->getline(&buf, io)) {
		if (FUNC0(buf.buf, '<', marker_size)) {
			if (FUNC9(&conflict, io, marker_size, NULL) < 0)
				break;
			if (hunk == RR_SIDE_1)
				FUNC2(&one, &conflict);
			else
				FUNC2(&two, &conflict);
			FUNC4(&conflict);
		} else if (FUNC0(buf.buf, '|', marker_size)) {
			if (hunk != RR_SIDE_1)
				break;
			hunk = RR_ORIGINAL;
		} else if (FUNC0(buf.buf, '=', marker_size)) {
			if (hunk != RR_SIDE_1 && hunk != RR_ORIGINAL)
				break;
			hunk = RR_SIDE_2;
		} else if (FUNC0(buf.buf, '>', marker_size)) {
			if (hunk != RR_SIDE_2)
				break;
			if (FUNC3(&one, &two) > 0)
				FUNC5(&one, &two);
			has_conflicts = 1;
			FUNC1(out, '<', marker_size);
			FUNC2(out, &one);
			FUNC1(out, '=', marker_size);
			FUNC2(out, &two);
			FUNC1(out, '>', marker_size);
			if (ctx) {
				the_hash_algo->update_fn(ctx, one.buf ?
							 one.buf : "",
							 one.len + 1);
				the_hash_algo->update_fn(ctx, two.buf ?
							 two.buf : "",
							 two.len + 1);
			}
			break;
		} else if (hunk == RR_SIDE_1)
			FUNC2(&one, &buf);
		else if (hunk == RR_ORIGINAL)
			; /* discard */
		else if (hunk == RR_SIDE_2)
			FUNC2(&two, &buf);
	}
	FUNC4(&one);
	FUNC4(&two);
	FUNC4(&buf);

	return has_conflicts;
}