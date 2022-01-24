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
struct transport {struct helper_data* data; } ;
struct string_list {int nr; TYPE_1__* items; } ;
struct helper_data {scalar_t__ import_marks; scalar_t__ export_marks; scalar_t__ signed_tags; } ;
struct child_process {int git_cmd; int /*<<< orphan*/  args; int /*<<< orphan*/  in; int /*<<< orphan*/  out; } ;
struct TYPE_2__ {char* string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct child_process* FUNC4 (struct transport*) ; 
 int FUNC5 (struct child_process*) ; 

__attribute__((used)) static int FUNC6(struct transport *transport,
			struct child_process *fastexport,
			struct string_list *revlist_args)
{
	struct helper_data *data = transport->data;
	struct child_process *helper = FUNC4(transport);
	int i;

	FUNC2(fastexport);

	/* we need to duplicate helper->in because we want to use it after
	 * fastexport is done with it. */
	fastexport->out = FUNC3(helper->in);
	FUNC0(&fastexport->args, "fast-export");
	FUNC0(&fastexport->args, "--use-done-feature");
	FUNC0(&fastexport->args, data->signed_tags ?
		"--signed-tags=verbatim" : "--signed-tags=warn-strip");
	if (data->export_marks)
		FUNC1(&fastexport->args, "--export-marks=%s.tmp", data->export_marks);
	if (data->import_marks)
		FUNC1(&fastexport->args, "--import-marks=%s", data->import_marks);

	for (i = 0; i < revlist_args->nr; i++)
		FUNC0(&fastexport->args, revlist_args->items[i].string);

	fastexport->git_cmd = 1;
	return FUNC5(fastexport);
}