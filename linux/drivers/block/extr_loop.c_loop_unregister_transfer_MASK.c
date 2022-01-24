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
struct loop_func_table {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int MAX_LO_CRYPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct loop_func_table*) ; 
 int /*<<< orphan*/  loop_index_idr ; 
 int /*<<< orphan*/  unregister_transfer_cb ; 
 struct loop_func_table** xfer_funcs ; 

int FUNC1(int number)
{
	unsigned int n = number;
	struct loop_func_table *xfer;

	if (n == 0 || n >= MAX_LO_CRYPT || (xfer = xfer_funcs[n]) == NULL)
		return -EINVAL;

	xfer_funcs[n] = NULL;
	FUNC0(&loop_index_idr, &unregister_transfer_cb, xfer);
	return 0;
}