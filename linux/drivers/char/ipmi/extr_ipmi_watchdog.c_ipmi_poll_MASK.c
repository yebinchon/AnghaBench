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
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 scalar_t__ data_to_read ; 
 int /*<<< orphan*/  ipmi_read_lock ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  read_q ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC3(struct file *file, poll_table *wait)
{
	__poll_t mask = 0;

	FUNC0(file, &read_q, wait);

	FUNC1(&ipmi_read_lock);
	if (data_to_read)
		mask |= (EPOLLIN | EPOLLRDNORM);
	FUNC2(&ipmi_read_lock);

	return mask;
}