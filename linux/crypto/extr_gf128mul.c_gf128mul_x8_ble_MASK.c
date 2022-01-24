#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_4__ {void* b; void* a; } ;
typedef  TYPE_1__ le128 ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int* gf128mul_table_be ; 
 int FUNC1 (void*) ; 

void FUNC2(le128 *r, const le128 *x)
{
	u64 a = FUNC1(x->a);
	u64 b = FUNC1(x->b);
	u64 _tt = gf128mul_table_be[a >> 56];

	r->a = FUNC0((a << 8) | (b >> 56));
	r->b = FUNC0((b << 8) ^ _tt);
}