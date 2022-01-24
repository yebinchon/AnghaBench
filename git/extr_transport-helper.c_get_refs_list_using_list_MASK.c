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
struct transport {struct helper_data* data; } ;
struct strbuf {char* buf; } ;
struct ref {char* name; struct ref* next; int /*<<< orphan*/  old_oid; int /*<<< orphan*/  status; int /*<<< orphan*/  symref; } ;
struct helper_data {int get_refs_list_called; scalar_t__ push; } ;
struct child_process {int /*<<< orphan*/  in; } ;

/* Variables and functions */
 int /*<<< orphan*/  REF_STATUS_UPTODATE ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ref* FUNC1 (char*) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct child_process* FUNC5 (struct transport*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct helper_data*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct ref*,struct ref*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 char* FUNC12 (char*,char) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static struct ref *FUNC15(struct transport *transport,
					    int for_push)
{
	struct helper_data *data = transport->data;
	struct child_process *helper;
	struct ref *ret = NULL;
	struct ref **tail = &ret;
	struct ref *posn;
	struct strbuf buf = STRBUF_INIT;

	data->get_refs_list_called = 1;
	helper = FUNC5(transport);

	if (data->push && for_push)
		FUNC13(helper->in, "list for-push\n");
	else
		FUNC13(helper->in, "list\n");

	while (1) {
		char *eov, *eon;
		if (FUNC9(data, &buf))
			FUNC3(128);

		if (!*buf.buf)
			break;

		eov = FUNC12(buf.buf, ' ');
		if (!eov)
			FUNC2(FUNC0("malformed response in ref list: %s"), buf.buf);
		eon = FUNC12(eov + 1, ' ');
		*eov = '\0';
		if (eon)
			*eon = '\0';
		*tail = FUNC1(eov + 1);
		if (buf.buf[0] == '@')
			(*tail)->symref = FUNC14(buf.buf + 1);
		else if (buf.buf[0] != '?')
			FUNC6(buf.buf, &(*tail)->old_oid);
		if (eon) {
			if (FUNC7(eon + 1, "unchanged")) {
				(*tail)->status |= REF_STATUS_UPTODATE;
				if (FUNC8((*tail)->name, &(*tail)->old_oid) < 0)
					FUNC2(FUNC0("could not read ref %s"),
					    (*tail)->name);
			}
		}
		tail = &((*tail)->next);
	}
	if (debug)
		FUNC4(stderr, "Debug: Read ref listing.\n");
	FUNC11(&buf);

	for (posn = ret; posn; posn = posn->next)
		FUNC10(posn, ret);

	return ret;
}