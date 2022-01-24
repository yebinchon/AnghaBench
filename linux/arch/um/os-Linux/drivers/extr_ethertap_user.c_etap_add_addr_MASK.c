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
struct ethertap_data {int control_fd; int /*<<< orphan*/  gate_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*) ; 

__attribute__((used)) static void FUNC2(unsigned char *addr, unsigned char *netmask,
			  void *data)
{
	struct ethertap_data *pri = data;

	FUNC1(pri->gate_addr, addr);
	if (pri->control_fd == -1)
		return;
	FUNC0(addr, netmask, &pri->control_fd);
}