#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct transport {int /*<<< orphan*/  url; TYPE_1__* remote; struct helper_data* data; } ;
struct strbuf {char* buf; } ;
struct TYPE_7__ {int /*<<< orphan*/  nr; } ;
struct helper_data {char const* name; int fetch; int option; int push; int import; int bidi_import; int export; int check_connectivity; int connect; int stateless_connect; int signed_tags; int no_private_update; struct child_process* helper; TYPE_2__ rs; void* import_marks; void* export_marks; int /*<<< orphan*/  out; scalar_t__ no_disconnect_req; } ;
struct TYPE_8__ {int /*<<< orphan*/ * argv; } ;
struct child_process {int in; int out; int silent_exec_failure; TYPE_4__ args; int /*<<< orphan*/  trace2_child_class; int /*<<< orphan*/  env_array; scalar_t__ git_cmd; scalar_t__ err; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  GIT_DIR_ENVIRONMENT ; 
 int /*<<< orphan*/  REFSPEC_FETCH ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct child_process*) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 (struct helper_data*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC16 (struct transport*) ; 
 int FUNC17 (struct child_process*) ; 
 scalar_t__ FUNC18 (char const*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC19 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC20 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int,char*) ; 
 int /*<<< orphan*/  FUNC23 (int,char*) ; 
 struct child_process* FUNC24 (int) ; 
 void* FUNC25 (char const*) ; 

__attribute__((used)) static struct child_process *FUNC26(struct transport *transport)
{
	struct helper_data *data = transport->data;
	struct strbuf buf = STRBUF_INIT;
	struct child_process *helper;
	int duped;
	int code;

	if (data->helper)
		return data->helper;

	helper = FUNC24(sizeof(*helper));
	FUNC3(helper);
	helper->in = -1;
	helper->out = -1;
	helper->err = 0;
	FUNC2(&helper->args, "git-remote-%s", data->name);
	FUNC1(&helper->args, transport->remote->name);
	FUNC1(&helper->args, FUNC14(transport->url));
	helper->git_cmd = 0;
	helper->silent_exec_failure = 1;

	if (FUNC10())
		FUNC2(&helper->env_array, "%s=%s",
				 GIT_DIR_ENVIRONMENT, FUNC9());

	helper->trace2_child_class = helper->args.argv[0]; /* "remote-<name>" */

	code = FUNC17(helper);
	if (code < 0 && errno == ENOENT)
		FUNC4(FUNC0("unable to find remote helper for '%s'"), data->name);
	else if (code != 0)
		FUNC7(code);

	data->helper = helper;
	data->no_disconnect_req = 0;
	FUNC13(&data->rs, REFSPEC_FETCH);

	/*
	 * Open the output as FILE* so strbuf_getline_*() family of
	 * functions can be used.
	 * Do this with duped fd because fclose() will close the fd,
	 * and stuff like taking over will require the fd to remain.
	 */
	duped = FUNC6(helper->out);
	if (duped < 0)
		FUNC5(FUNC0("can't dup helper output fd"));
	data->out = FUNC23(duped, "r");

	FUNC22(helper->in, "capabilities\n");

	while (1) {
		const char *capname, *arg;
		int mandatory = 0;
		if (FUNC11(data, &buf))
			FUNC7(128);

		if (!*buf.buf)
			break;

		if (*buf.buf == '*') {
			capname = buf.buf + 1;
			mandatory = 1;
		} else
			capname = buf.buf;

		if (debug)
			FUNC8(stderr, "Debug: Got cap %s\n", capname);
		if (!FUNC20(capname, "fetch"))
			data->fetch = 1;
		else if (!FUNC20(capname, "option"))
			data->option = 1;
		else if (!FUNC20(capname, "push"))
			data->push = 1;
		else if (!FUNC20(capname, "import"))
			data->import = 1;
		else if (!FUNC20(capname, "bidi-import"))
			data->bidi_import = 1;
		else if (!FUNC20(capname, "export"))
			data->export = 1;
		else if (!FUNC20(capname, "check-connectivity"))
			data->check_connectivity = 1;
		else if (FUNC15(capname, "refspec ", &arg)) {
			FUNC12(&data->rs, arg);
		} else if (!FUNC20(capname, "connect")) {
			data->connect = 1;
		} else if (!FUNC20(capname, "stateless-connect")) {
			data->stateless_connect = 1;
		} else if (!FUNC20(capname, "signed-tags")) {
			data->signed_tags = 1;
		} else if (FUNC15(capname, "export-marks ", &arg)) {
			data->export_marks = FUNC25(arg);
		} else if (FUNC15(capname, "import-marks ", &arg)) {
			data->import_marks = FUNC25(arg);
		} else if (FUNC18(capname, "no-private-update")) {
			data->no_private_update = 1;
		} else if (mandatory) {
			FUNC4(FUNC0("unknown mandatory capability %s; this remote "
			      "helper probably needs newer version of Git"),
			    capname);
		}
	}
	if (!data->rs.nr && (data->import || data->bidi_import || data->export)) {
		FUNC21(FUNC0("this remote helper should implement refspec capability"));
	}
	FUNC19(&buf);
	if (debug)
		FUNC8(stderr, "Debug: Capabilities complete.\n");
	FUNC16(transport);
	return data->helper;
}