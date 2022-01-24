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
struct string_list {int dummy; } ;
struct strbuf {unsigned int const len; char* buf; } ;
struct rerere_id {int variant; } ;
struct repository {int dummy; } ;
struct TYPE_4__ {struct rerere_id* util; } ;
struct TYPE_3__ {unsigned int hexsz; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int GIT_MAX_RAWSZ ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (struct repository*) ; 
 struct rerere_id* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 TYPE_2__* FUNC9 (struct string_list*,char*) ; 
 int FUNC10 (char*,char**,int) ; 
 TYPE_1__* the_hash_algo ; 

__attribute__((used)) static void FUNC11(struct repository *r, struct string_list *rr)
{
	struct strbuf buf = STRBUF_INIT;
	FILE *in = FUNC3(FUNC5(r), "r");

	if (!in)
		return;
	while (!FUNC7(&buf, in, '\0')) {
		char *path;
		unsigned char hash[GIT_MAX_RAWSZ];
		struct rerere_id *id;
		int variant;
		const unsigned hexsz = the_hash_algo->hexsz;

		/* There has to be the hash, tab, path and then NUL */
		if (buf.len < hexsz + 2 || FUNC4(buf.buf, hash))
			FUNC1(FUNC0("corrupt MERGE_RR"));

		if (buf.buf[hexsz] != '.') {
			variant = 0;
			path = buf.buf + hexsz;
		} else {
			errno = 0;
			variant = FUNC10(buf.buf + hexsz + 1, &path, 10);
			if (errno)
				FUNC1(FUNC0("corrupt MERGE_RR"));
		}
		if (*(path++) != '\t')
			FUNC1(FUNC0("corrupt MERGE_RR"));
		buf.buf[hexsz] = '\0';
		id = FUNC6(buf.buf);
		id->variant = variant;
		FUNC9(rr, path)->util = id;
	}
	FUNC8(&buf);
	FUNC2(in);
}