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
struct file {struct apm_user* private_data; } ;
struct apm_user {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  apm_waitqueue ; 
 scalar_t__ FUNC0 (struct apm_user*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct apm_user*) ; 

__attribute__((used)) static __poll_t FUNC3(struct file *fp, poll_table *wait)
{
	struct apm_user *as;

	as = fp->private_data;
	if (FUNC0(as, "poll"))
		return 0;
	FUNC1(fp, &apm_waitqueue, wait);
	if (!FUNC2(as))
		return EPOLLIN | EPOLLRDNORM;
	return 0;
}