#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_5__ {void* a; void* b; } ;
typedef  TYPE_1__ le128 ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (void*) ; 

__attribute__((used)) static inline void FUNC2(le128 *r, const le128 *v1, const le128 *v2)
{
	u64 x = FUNC1(v1->b);
	u64 y = FUNC1(v2->b);

	r->b = FUNC0(x - y);
	r->a = FUNC0(FUNC1(v1->a) - FUNC1(v2->a) -
			   (x - y > x));
}