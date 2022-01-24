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
struct transport {int /*<<< orphan*/ * smart_options; int /*<<< orphan*/ * vtable; struct helper_data* data; } ;
struct helper_data {char const* name; int /*<<< orphan*/  transport_options; } ;

/* Variables and functions */
 int debug ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  vtable ; 
 struct helper_data* FUNC2 (int,int) ; 

int FUNC3(struct transport *transport, const char *name)
{
	struct helper_data *data = FUNC2(1, sizeof(*data));
	data->name = name;

	FUNC1(name);

	if (FUNC0("GIT_TRANSPORT_HELPER_DEBUG"))
		debug = 1;

	transport->data = data;
	transport->vtable = &vtable;
	transport->smart_options = &(data->transport_options);
	return 0;
}