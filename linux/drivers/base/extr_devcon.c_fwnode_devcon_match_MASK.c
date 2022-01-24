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
struct fwnode_handle {int dummy; } ;
struct device_connection {int /*<<< orphan*/  fwnode; } ;
typedef  void* (* devcon_match_fn_t ) (struct device_connection*,int,void*) ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fwnode_handle*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC3(struct fwnode_handle *fwnode, const char *con_id,
		    void *data, devcon_match_fn_t match)
{
	struct device_connection con = { };
	void *ret;
	int i;

	for (i = 0; ; i++) {
		con.fwnode = FUNC1(fwnode, con_id, i);
		if (FUNC0(con.fwnode))
			break;

		ret = match(&con, -1, data);
		FUNC2(con.fwnode);
		if (ret)
			return ret;
	}

	return NULL;
}