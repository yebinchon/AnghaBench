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
struct TYPE_2__ {int /*<<< orphan*/  io_exits; } ;
struct kvm_vcpu {TYPE_1__ stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_QUALIFICATION ; 
 int FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kvm_vcpu*,int,unsigned int,int) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct kvm_vcpu *vcpu)
{
	unsigned long exit_qualification;
	int size, in, string;
	unsigned port;

	exit_qualification = FUNC2(EXIT_QUALIFICATION);
	string = (exit_qualification & 16) != 0;

	++vcpu->stat.io_exits;

	if (string)
		return FUNC0(vcpu, 0);

	port = exit_qualification >> 16;
	size = (exit_qualification & 7) + 1;
	in = (exit_qualification & 8) != 0;

	return FUNC1(vcpu, size, port, in);
}