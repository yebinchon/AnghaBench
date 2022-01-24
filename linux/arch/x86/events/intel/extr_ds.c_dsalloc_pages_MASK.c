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
struct page {int dummy; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int __GFP_ZERO ; 
 struct page* FUNC0 (int,int,unsigned int) ; 
 int FUNC1 (int) ; 
 unsigned int FUNC2 (size_t) ; 
 void* FUNC3 (struct page*) ; 

__attribute__((used)) static void *FUNC4(size_t size, gfp_t flags, int cpu)
{
	unsigned int order = FUNC2(size);
	int node = FUNC1(cpu);
	struct page *page;

	page = FUNC0(node, flags | __GFP_ZERO, order);
	return page ? FUNC3(page) : NULL;
}