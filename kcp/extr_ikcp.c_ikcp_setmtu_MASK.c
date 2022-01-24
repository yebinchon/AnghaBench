#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int mtu; int mss; char* buffer; } ;
typedef  TYPE_1__ ikcpcb ;

/* Variables and functions */
 int IKCP_OVERHEAD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 

int FUNC2(ikcpcb *kcp, int mtu)
{
	char *buffer;
	if (mtu < 50 || mtu < (int)IKCP_OVERHEAD) 
		return -1;
	buffer = (char*)FUNC1((mtu + IKCP_OVERHEAD) * 3);
	if (buffer == NULL) 
		return -2;
	kcp->mtu = mtu;
	kcp->mss = kcp->mtu - IKCP_OVERHEAD;
	FUNC0(kcp->buffer);
	kcp->buffer = buffer;
	return 0;
}