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

/* Variables and functions */
 long EINVAL ; 
 unsigned int KVM_S390_ENABLE_SIE ; 
 long FUNC0 () ; 

long FUNC1(struct file *filp,
			unsigned int ioctl, unsigned long arg)
{
	if (ioctl == KVM_S390_ENABLE_SIE)
		return FUNC0();
	return -EINVAL;
}