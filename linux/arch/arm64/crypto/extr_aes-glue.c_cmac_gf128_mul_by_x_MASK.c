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
typedef  TYPE_1__ be128 ;

/* Variables and functions */
 int FUNC0 (void*) ; 
 void* FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(be128 *y, const be128 *x)
{
	u64 a = FUNC0(x->a);
	u64 b = FUNC0(x->b);

	y->a = FUNC1((a << 1) | (b >> 63));
	y->b = FUNC1((b << 1) ^ ((a >> 63) ? 0x87 : 0));
}