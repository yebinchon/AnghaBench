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
struct clp_req_hdr {int cmd; } ;
struct clp_req {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct clp_req*,void*) ; 
 int FUNC1 (struct clp_req*,void*) ; 
 int FUNC2 (struct clp_req*,void*) ; 
 int FUNC3 (struct clp_req*,void*) ; 

__attribute__((used)) static int FUNC4(struct clp_req *req, struct clp_req_hdr *lpcb)
{
	switch (lpcb->cmd) {
	case 0x0001: /* store logical-processor characteristics */
		return FUNC3(req, (void *) lpcb);
	case 0x0002: /* list PCI functions */
		return FUNC0(req, (void *) lpcb);
	case 0x0003: /* query PCI function */
		return FUNC1(req, (void *) lpcb);
	case 0x0004: /* query PCI function group */
		return FUNC2(req, (void *) lpcb);
	default:
		return -EINVAL;
	}
}