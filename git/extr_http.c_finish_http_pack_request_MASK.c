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
struct packed_git {int /*<<< orphan*/  hash; struct packed_git* next; } ;
struct TYPE_2__ {char* buf; } ;
struct http_pack_request {TYPE_1__ tmpfile; struct packed_git** lst; int /*<<< orphan*/ * packfile; struct packed_git* target; } ;
struct child_process {int git_cmd; int no_stdin; int no_stdout; int /*<<< orphan*/  args; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct packed_git*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct packed_git*) ; 
 scalar_t__ FUNC8 (struct child_process*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,size_t*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (char*,int,char*) ; 

int FUNC14(struct http_pack_request *preq)
{
	struct packed_git **lst;
	struct packed_git *p = preq->target;
	char *tmp_idx;
	size_t len;
	struct child_process ip = CHILD_PROCESS_INIT;

	FUNC3(p);

	FUNC4(preq->packfile);
	preq->packfile = NULL;

	lst = preq->lst;
	while (*lst != p)
		lst = &((*lst)->next);
	*lst = (*lst)->next;

	if (!FUNC11(preq->tmpfile.buf, ".pack.temp", &len))
		FUNC0("pack tmpfile does not end in .pack.temp?");
	tmp_idx = FUNC13("%.*s.idx.temp", (int)len, preq->tmpfile.buf);

	FUNC1(&ip.args, "index-pack");
	FUNC2(&ip.args, "-o", tmp_idx, NULL);
	FUNC1(&ip.args, preq->tmpfile.buf);
	ip.git_cmd = 1;
	ip.no_stdin = 1;
	ip.no_stdout = 1;

	if (FUNC8(&ip)) {
		FUNC12(preq->tmpfile.buf);
		FUNC12(tmp_idx);
		FUNC6(tmp_idx);
		return -1;
	}

	FUNC12(FUNC9(p->hash));

	if (FUNC5(preq->tmpfile.buf, FUNC10(p->hash))
	 || FUNC5(tmp_idx, FUNC9(p->hash))) {
		FUNC6(tmp_idx);
		return -1;
	}

	FUNC7(the_repository, p);
	FUNC6(tmp_idx);
	return 0;
}