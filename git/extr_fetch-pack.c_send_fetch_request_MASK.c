#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct ref {int dummy; } ;
struct oidset {int dummy; } ;
struct TYPE_6__ {scalar_t__ choice; } ;
struct fetch_pack_args {scalar_t__ no_dependents; TYPE_3__ filter_options; scalar_t__ deepen; scalar_t__ include_tag; scalar_t__ no_progress; scalar_t__ use_thin_pack; TYPE_2__* server_options; } ;
struct fetch_negotiator {int dummy; } ;
struct TYPE_5__ {int nr; TYPE_1__* items; } ;
struct TYPE_4__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,struct oidset*) ; 
 int FUNC2 (struct fetch_negotiator*,struct strbuf*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,struct fetch_pack_args*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct ref const*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,char*,...) ; 
 scalar_t__ prefer_ofs_delta ; 
 int /*<<< orphan*/  FUNC13 (struct fetch_pack_args*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (char*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 scalar_t__ FUNC18 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct fetch_negotiator *negotiator, int fd_out,
			      struct fetch_pack_args *args,
			      const struct ref *wants, struct oidset *common,
			      int *haves_to_send, int *in_vain,
			      int sideband_all)
{
	int ret = 0;
	struct strbuf req_buf = STRBUF_INIT;

	if (FUNC15("fetch", 1))
		FUNC12(&req_buf, "command=fetch");
	if (FUNC15("agent", 0))
		FUNC12(&req_buf, "agent=%s", FUNC8());
	if (args->server_options && args->server_options->nr &&
	    FUNC15("server-option", 1)) {
		int i;
		for (i = 0; i < args->server_options->nr; i++)
			FUNC12(&req_buf, "server-option=%s",
					 args->server_options->items[i].string);
	}

	FUNC10(&req_buf);
	if (args->use_thin_pack)
		FUNC12(&req_buf, "thin-pack");
	if (args->no_progress)
		FUNC12(&req_buf, "no-progress");
	if (args->include_tag)
		FUNC12(&req_buf, "include-tag");
	if (prefer_ofs_delta)
		FUNC12(&req_buf, "ofs-delta");
	if (sideband_all)
		FUNC12(&req_buf, "sideband-all");

	/* Add shallow-info and deepen request */
	if (FUNC14("fetch", "shallow", 0))
		FUNC3(&req_buf, args);
	else if (FUNC9(the_repository) || args->deepen)
		FUNC5(FUNC0("Server does not support shallow requests"));

	/* Add filter */
	if (FUNC14("fetch", "filter", 0) &&
	    args->filter_options.choice) {
		const char *spec =
			FUNC7(&args->filter_options);
		FUNC13(args, FUNC0("Server supports filter"));
		FUNC12(&req_buf, "filter %s", spec);
	} else if (args->filter_options.choice) {
		FUNC17("filtering not recognized by server, ignoring");
	}

	/* add wants */
	FUNC4(args->no_dependents, wants, &req_buf);

	if (args->no_dependents) {
		FUNC12(&req_buf, "done");
		ret = 1;
	} else {
		/* Add all of the common commits we've found in previous rounds */
		FUNC1(&req_buf, common);

		/* Add initial haves */
		ret = FUNC2(negotiator, &req_buf, haves_to_send, in_vain);
	}

	/* Send request */
	FUNC11(&req_buf);
	if (FUNC18(fd_out, req_buf.buf, req_buf.len) < 0)
		FUNC6(FUNC0("unable to write request to remote"));

	FUNC16(&req_buf);
	return ret;
}