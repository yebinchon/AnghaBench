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
struct fwnode_reference_args {int nargs; unsigned int* args; struct fwnode_handle* fwnode; } ;
struct fwnode_handle {int dummy; } ;
typedef  int /*<<< orphan*/  args ;

/* Variables and functions */
 struct fwnode_handle* FUNC0 (struct fwnode_handle*,char*,unsigned int) ; 
 int FUNC1 (struct fwnode_handle const*,char*,int /*<<< orphan*/ ,struct fwnode_reference_args*) ; 
 int /*<<< orphan*/  FUNC2 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct fwnode_reference_args*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct fwnode_handle *
FUNC4(const struct fwnode_handle *__fwnode)
{
	struct fwnode_handle *fwnode;
	unsigned int port_nr, endpoint_nr;
	struct fwnode_reference_args args;
	int ret;

	FUNC3(&args, 0, sizeof(args));
	ret = FUNC1(__fwnode, "remote-endpoint", 0,
					       &args);
	if (ret)
		return NULL;

	/* Direct endpoint reference? */
	if (!FUNC2(args.fwnode))
		return args.nargs ? NULL : args.fwnode;

	/*
	 * Always require two arguments with the reference: port and
	 * endpoint indices.
	 */
	if (args.nargs != 2)
		return NULL;

	fwnode = args.fwnode;
	port_nr = args.args[0];
	endpoint_nr = args.args[1];

	fwnode = FUNC0(fwnode, "port", port_nr);

	return FUNC0(fwnode, "endpoint", endpoint_nr);
}