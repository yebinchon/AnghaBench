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
struct string_list {int dummy; } ;
struct strbuf {char* buf; } ;
struct ref {char* name; TYPE_1__* peer_ref; int /*<<< orphan*/  deletion; int /*<<< orphan*/  old_oid; struct ref* next; } ;
struct object_id {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  nr; } ;
struct helper_data {char* export_marks; TYPE_2__ rs; int /*<<< orphan*/  name; } ;
struct child_process {int /*<<< orphan*/  in; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int REF_ISSYMREF ; 
 int /*<<< orphan*/  RESOLVE_REF_READING ; 
 struct strbuf STRBUF_INIT ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 int TRANSPORT_PUSH_FORCE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (struct transport*,struct child_process*,struct string_list*) ; 
 struct child_process* FUNC6 (struct transport*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct object_id*) ; 
 scalar_t__ FUNC9 (struct helper_data*,struct ref*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 char* FUNC11 (char*,int /*<<< orphan*/ ,struct object_id*,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct transport*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (struct transport*,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*) ; 
 scalar_t__ FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct string_list*,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct string_list*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC23(struct transport *transport,
		struct ref *remote_refs, int flags)
{
	struct ref *ref;
	struct child_process *helper, exporter;
	struct helper_data *data = transport->data;
	struct string_list revlist_args = STRING_LIST_INIT_DUP;
	struct strbuf buf = STRBUF_INIT;

	if (!data->rs.nr)
		FUNC2(FUNC0("remote-helper doesn't support push; refspec needed"));

	FUNC12(transport, data->name, flags);
	if (flags & TRANSPORT_PUSH_FORCE) {
		if (FUNC13(transport, "force", "true") != 0)
			FUNC21(FUNC0("helper %s does not support 'force'"), data->name);
	}

	helper = FUNC6(transport);

	FUNC22(helper->in, "export\n");

	for (ref = remote_refs; ref; ref = ref->next) {
		char *private;
		struct object_id oid;

		private = FUNC1(&data->rs, ref->name);
		if (private && !FUNC7(private, &oid)) {
			FUNC14(&buf, "^%s", private);
			FUNC19(&revlist_args,
						 FUNC15(&buf, NULL));
			FUNC8(&ref->old_oid, &oid);
		}
		FUNC4(private);

		if (ref->peer_ref) {
			if (FUNC17(ref->name, ref->peer_ref->name)) {
				if (!ref->deletion) {
					const char *name;
					int flag;

					/* Follow symbolic refs (mainly for HEAD). */
					name = FUNC11(ref->peer_ref->name,
								  RESOLVE_REF_READING,
								  &oid, &flag);
					if (!name || !(flag & REF_ISSYMREF))
						name = ref->peer_ref->name;

					FUNC14(&buf, "%s:%s", name, ref->name);
				} else
					FUNC14(&buf, ":%s", ref->name);

				FUNC18(&revlist_args, "--refspec");
				FUNC18(&revlist_args, buf.buf);
				FUNC16(&buf);
			}
			if (!ref->deletion)
				FUNC18(&revlist_args, ref->peer_ref->name);
		}
	}

	if (FUNC5(transport, &exporter, &revlist_args))
		FUNC2(FUNC0("couldn't run fast-export"));

	FUNC20(&revlist_args, 1);

	if (FUNC3(&exporter))
		FUNC2(FUNC0("error while running fast-export"));
	if (FUNC9(data, remote_refs, flags))
		return 1;

	if (data->export_marks) {
		FUNC14(&buf, "%s.tmp", data->export_marks);
		FUNC10(buf.buf, data->export_marks);
		FUNC16(&buf);
	}

	return 0;
}