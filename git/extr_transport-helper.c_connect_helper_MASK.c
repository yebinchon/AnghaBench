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
struct helper_data {TYPE_1__* helper; int /*<<< orphan*/  connect; } ;
struct TYPE_2__ {int out; int in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (struct transport*) ; 
 int /*<<< orphan*/  FUNC3 (struct transport*,char const*,char const*) ; 

__attribute__((used)) static int FUNC4(struct transport *transport, const char *name,
		   const char *exec, int fd[2])
{
	struct helper_data *data = transport->data;

	/* Get_helper so connect is inited. */
	FUNC2(transport);
	if (!data->connect)
		FUNC1(FUNC0("operation not supported by protocol"));

	if (!FUNC3(transport, name, exec))
		FUNC1(FUNC0("can't connect to subservice %s"), name);

	fd[0] = data->helper->out;
	fd[1] = data->helper->in;
	return 0;
}