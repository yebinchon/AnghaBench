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
struct transport {TYPE_1__* vtable; struct helper_data* data; } ;
struct ref {int dummy; } ;
struct helper_data {scalar_t__ export; scalar_t__ push; } ;
struct TYPE_2__ {int (* push_refs ) (struct transport*,struct ref*,int) ;} ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct transport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct transport*,int) ; 
 int FUNC4 (struct transport*,struct ref*,int) ; 
 int FUNC5 (struct transport*,struct ref*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC6 (struct transport*,struct ref*,int) ; 

__attribute__((used)) static int FUNC7(struct transport *transport,
		struct ref *remote_refs, int flags)
{
	struct helper_data *data = transport->data;

	if (FUNC3(transport, 1)) {
		FUNC1(transport);
		return transport->vtable->push_refs(transport, remote_refs, flags);
	}

	if (!remote_refs) {
		FUNC2(stderr,
			"%s", FUNC0("No refs in common and none specified; doing nothing.\n"
			  "Perhaps you should specify a branch such as 'master'.\n"));
		return 0;
	}

	if (data->push)
		return FUNC5(transport, remote_refs, flags);

	if (data->export)
		return FUNC4(transport, remote_refs, flags);

	return -1;
}