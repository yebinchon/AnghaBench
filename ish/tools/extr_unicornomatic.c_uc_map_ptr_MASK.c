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
typedef  int /*<<< orphan*/  uc_engine ;
typedef  scalar_t__ dword_t ;
typedef  scalar_t__ addr_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  UC_PROT_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3(uc_engine *uc, addr_t start, void *mem, dword_t size) {
    FUNC2(uc, start, size);
    for (addr_t addr = start; addr < start + size; addr += PAGE_SIZE) {
        FUNC1(FUNC0(uc, addr, PAGE_SIZE, UC_PROT_ALL, mem + (addr - start)), "mmap emulation");
    }
}