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
struct send_pack_args {scalar_t__ stateless_rpc; scalar_t__ progress; scalar_t__ quiet; scalar_t__ use_ofs_delta; scalar_t__ use_thin_pack; } ;
struct ref {struct ref* next; int /*<<< orphan*/  new_oid; int /*<<< orphan*/  old_oid; } ;
struct oid_array {int nr; int /*<<< orphan*/ * oid; } ;
struct child_process {int in; int out; int git_cmd; int /*<<< orphan*/  args; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  LARGE_PACKET_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct child_process*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/ * FUNC14 (int,char*) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(int fd, struct ref *refs, struct oid_array *extra, struct send_pack_args *args)
{
	/*
	 * The child becomes pack-objects --revs; we feed
	 * the revision parameters to it via its stdin and
	 * let its stdout go back to the other end.
	 */
	struct child_process po = CHILD_PROCESS_INIT;
	FILE *po_in;
	int i;
	int rc;

	FUNC0(&po.args, "pack-objects");
	FUNC0(&po.args, "--all-progress-implied");
	FUNC0(&po.args, "--revs");
	FUNC0(&po.args, "--stdout");
	if (args->use_thin_pack)
		FUNC0(&po.args, "--thin");
	if (args->use_ofs_delta)
		FUNC0(&po.args, "--delta-base-offset");
	if (args->quiet || !args->progress)
		FUNC0(&po.args, "-q");
	if (args->progress)
		FUNC0(&po.args, "--progress");
	if (FUNC11(the_repository))
		FUNC0(&po.args, "--shallow");
	po.in = -1;
	po.out = args->stateless_rpc ? -1 : fd;
	po.git_cmd = 1;
	if (FUNC13(&po))
		FUNC2("git pack-objects failed");

	/*
	 * We feed the pack-objects we just spawned with revision
	 * parameters by writing to the pipe.
	 */
	po_in = FUNC14(po.in, "w");
	for (i = 0; i < extra->nr; i++)
		FUNC5(&extra->oid[i], po_in, 1);

	while (refs) {
		if (!FUNC10(&refs->old_oid))
			FUNC5(&refs->old_oid, po_in, 1);
		if (!FUNC10(&refs->new_oid))
			FUNC5(&refs->new_oid, po_in, 0);
		refs = refs->next;
	}

	FUNC7(po_in);
	if (FUNC6(po_in))
		FUNC2("error writing to pack-objects");
	FUNC4(po_in);

	if (args->stateless_rpc) {
		char *buf = FUNC15(LARGE_PACKET_MAX);
		while (1) {
			ssize_t n = FUNC16(po.out, buf, LARGE_PACKET_MAX);
			if (n <= 0)
				break;
			FUNC12(fd, -1, buf, n, LARGE_PACKET_MAX);
		}
		FUNC9(buf);
		FUNC1(po.out);
		po.out = -1;
	}

	rc = FUNC8(&po);
	if (rc) {
		/*
		 * For a normal non-zero exit, we assume pack-objects wrote
		 * something useful to stderr. For death by signal, though,
		 * we should mention it to the user. The exception is SIGPIPE
		 * (141), because that's a normal occurrence if the remote end
		 * hangs up (and we'll report that by trying to read the unpack
		 * status).
		 */
		if (rc > 128 && rc != 141)
			FUNC3("pack-objects died of signal %d", rc - 128);
		return -1;
	}
	return 0;
}