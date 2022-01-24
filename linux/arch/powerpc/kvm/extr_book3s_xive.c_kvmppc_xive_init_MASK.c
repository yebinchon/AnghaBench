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
struct kvmppc_xive {int dummy; } ;
struct kvm_device {scalar_t__ private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvmppc_xive*) ; 

__attribute__((used)) static void FUNC1(struct kvm_device *dev)
{
	struct kvmppc_xive *xive = (struct kvmppc_xive *)dev->private;

	/* Register some debug interfaces */
	FUNC0(xive);
}