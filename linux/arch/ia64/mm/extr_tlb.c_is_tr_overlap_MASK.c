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
typedef  int u64 ;
struct ia64_tr_entry {int rr; int itir; int ifa; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct ia64_tr_entry *p, u64 va, u64 log_size)
{
	u64 tr_log_size;
	u64 tr_end;
	u64 va_rr = FUNC1(va);
	u64 va_rid = FUNC0(va_rr);
	u64 va_end = va + (1<<log_size) - 1;

	if (va_rid != FUNC0(p->rr))
		return 0;
	tr_log_size = (p->itir & 0xff) >> 2;
	tr_end = p->ifa + (1<<tr_log_size) - 1;

	if (va > tr_end || p->ifa > va_end)
		return 0;
	return 1;

}