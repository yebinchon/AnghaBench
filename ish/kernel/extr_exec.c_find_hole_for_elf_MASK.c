#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct prg_header {scalar_t__ type; scalar_t__ vaddr; scalar_t__ memsize; } ;
struct elf_header {int phent_count; } ;
typedef  scalar_t__ pages_t ;
typedef  int addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  mem; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int PAGE_BITS ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ PT_LOAD ; 
 TYPE_1__* current ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static addr_t FUNC3(struct elf_header *header, struct prg_header *ph) {
    struct prg_header *first = NULL, *last = NULL;
    for (int i = 0; i < header->phent_count; i++) {
        if (ph[i].type == PT_LOAD) {
            if (first == NULL)
                first = &ph[i];
            last = &ph[i];
        }
    }
    pages_t size = 0;
    if (first != NULL) {
        pages_t a = FUNC1(last->vaddr + last->memsize);
        pages_t b = FUNC0(first->vaddr);
        size = a - b;
    }
    return FUNC2(current->mem, size) << PAGE_BITS;
}