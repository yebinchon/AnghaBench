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
struct tlb {int dummy; } ;
typedef  int addr_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int PAGE_BITS ; 
 size_t PAGE_SIZE ; 
 size_t FUNC1 (int) ; 
 char* FUNC2 (struct tlb*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,unsigned int) ; 

bool FUNC5(struct tlb *tlb, addr_t addr, const char *value, unsigned size) {
    char *ptr1 = FUNC2(tlb, addr);
    char *ptr2 = FUNC2(tlb, (FUNC0(addr) + 1) << PAGE_BITS);
    if (ptr1 == NULL || ptr2 == NULL)
        return false;
    size_t part1 = PAGE_SIZE - FUNC1(addr);
    FUNC3(part1 < size);
    FUNC4(ptr1, value, part1);
    FUNC4(ptr2, value + part1, size - part1);
    return true;
}