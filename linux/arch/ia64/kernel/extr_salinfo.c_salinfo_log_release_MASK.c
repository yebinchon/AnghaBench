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
struct salinfo_data {scalar_t__ state; scalar_t__ open; int /*<<< orphan*/ * oemdata; int /*<<< orphan*/ * log_buffer; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 struct salinfo_data* FUNC0 (struct inode*) ; 
 scalar_t__ STATE_NO_DATA ; 
 int /*<<< orphan*/  data_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct inode *inode, struct file *file)
{
	struct salinfo_data *data = FUNC0(inode);

	if (data->state == STATE_NO_DATA) {
		FUNC3(data->log_buffer);
		FUNC3(data->oemdata);
		data->log_buffer = NULL;
		data->oemdata = NULL;
	}
	FUNC1(&data_lock);
	data->open = 0;
	FUNC2(&data_lock);
	return 0;
}