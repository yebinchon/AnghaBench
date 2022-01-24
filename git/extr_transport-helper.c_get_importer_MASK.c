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
struct helper_data {scalar_t__ bidi_import; } ;
struct child_process {int git_cmd; int /*<<< orphan*/  args; void* in; void* out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct child_process*) ; 
 scalar_t__ debug ; 
 struct child_process* FUNC3 (struct transport*) ; 
 int FUNC4 (struct child_process*) ; 
 void* FUNC5 (void*) ; 

__attribute__((used)) static int FUNC6(struct transport *transport, struct child_process *fastimport)
{
	struct child_process *helper = FUNC3(transport);
	struct helper_data *data = transport->data;
	int cat_blob_fd, code;
	FUNC2(fastimport);
	fastimport->in = FUNC5(helper->out);
	FUNC0(&fastimport->args, "fast-import");
	FUNC0(&fastimport->args, debug ? "--stats" : "--quiet");

	if (data->bidi_import) {
		cat_blob_fd = FUNC5(helper->in);
		FUNC1(&fastimport->args, "--cat-blob-fd=%d", cat_blob_fd);
	}
	fastimport->git_cmd = 1;

	code = FUNC4(fastimport);
	return code;
}