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
struct transport {struct helper_data* data; } ;
struct strbuf {int dummy; } ;
struct ref {int status; char* symref; char* name; int /*<<< orphan*/  old_oid; } ;
struct TYPE_4__ {scalar_t__ nr; } ;
struct helper_data {TYPE_2__ rs; TYPE_1__* helper; } ;
struct child_process {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  in; } ;

/* Variables and functions */
 int REF_STATUS_UPTODATE ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC3 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct transport*) ; 
 scalar_t__ FUNC6 (struct transport*,struct child_process*) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct helper_data*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC13 (char*) ; 

__attribute__((used)) static int FUNC14(struct transport *transport,
			     int nr_heads, struct ref **to_fetch)
{
	struct child_process fastimport;
	struct helper_data *data = transport->data;
	int i;
	struct ref *posn;
	struct strbuf buf = STRBUF_INIT;

	FUNC5(transport);

	if (FUNC6(transport, &fastimport))
		FUNC2(FUNC0("couldn't run fast-import"));

	for (i = 0; i < nr_heads; i++) {
		posn = to_fetch[i];
		if (posn->status & REF_STATUS_UPTODATE)
			continue;

		FUNC9(&buf, "import %s\n",
			    posn->symref ? posn->symref : posn->name);
		FUNC8(data, &buf);
		FUNC11(&buf);
	}

	FUNC12(data->helper->in, "\n");
	/*
	 * remote-helpers that advertise the bidi-import capability are required to
	 * buffer the complete batch of import commands until this newline before
	 * sending data to fast-import.
	 * These helpers read back data from fast-import on their stdin, which could
	 * be mixed with import commands, otherwise.
	 */

	if (FUNC3(&fastimport))
		FUNC2(FUNC0("error while running fast-import"));

	/*
	 * The fast-import stream of a remote helper that advertises
	 * the "refspec" capability writes to the refs named after the
	 * right hand side of the first refspec matching each ref we
	 * were fetching.
	 *
	 * (If no "refspec" capability was specified, for historical
	 * reasons we default to the equivalent of *:*.)
	 *
	 * Store the result in to_fetch[i].old_sha1.  Callers such
	 * as "git fetch" can use the value to write feedback to the
	 * terminal, populate FETCH_HEAD, and determine what new value
	 * should be written to peer_ref if the update is a
	 * fast-forward or this is a forced update.
	 */
	for (i = 0; i < nr_heads; i++) {
		char *private, *name;
		posn = to_fetch[i];
		if (posn->status & REF_STATUS_UPTODATE)
			continue;
		name = posn->symref ? posn->symref : posn->name;
		if (data->rs.nr)
			private = FUNC1(&data->rs, name);
		else
			private = FUNC13(name);
		if (private) {
			if (FUNC7(private, &posn->old_oid) < 0)
				FUNC2(FUNC0("could not read ref %s"), private);
			FUNC4(private);
		}
	}
	FUNC10(&buf);
	return 0;
}