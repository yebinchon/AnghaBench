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
struct pt_entry {int flags; int offset; TYPE_1__* data; } ;
struct mem {int /*<<< orphan*/  jit; } ;
typedef  scalar_t__ page_t ;
typedef  int /*<<< orphan*/  addr_t ;
struct TYPE_2__ {void* data; } ;

/* Variables and functions */
 int MAP_ANONYMOUS ; 
 int MAP_PRIVATE ; 
 scalar_t__ MEM_PAGES ; 
 int MEM_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int P_COW ; 
 int P_GROWSDOWN ; 
 int P_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mem*) ; 
 struct pt_entry* FUNC4 (struct mem*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mem*,scalar_t__,int,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mem*,scalar_t__,int,int) ; 

void *FUNC9(struct mem *mem, addr_t addr, int type) {
    page_t page = FUNC0(addr);
    struct pt_entry *entry = FUNC4(mem, page);

    if (entry == NULL) {
        // page does not exist
        // look to see if the next VM region is willing to grow down
        page_t p = page + 1;
        while (p < MEM_PAGES && FUNC4(mem, p) == NULL)
            p++;
        if (p >= MEM_PAGES)
            return NULL;
        if (!(FUNC4(mem, p)->flags & P_GROWSDOWN))
            return NULL;
        FUNC8(mem, page, 1, P_WRITE | P_GROWSDOWN);
        entry = FUNC4(mem, page);
    }

    if (entry != NULL && type == MEM_WRITE) {
        // if page is unwritable, well tough luck
        if (!(entry->flags & P_WRITE))
            return NULL;
        // if page is cow, ~~milk~~ copy it
        if (entry->flags & P_COW) {
            void *data = (char *) entry->data->data + entry->offset;
            void *copy = FUNC6(NULL, PAGE_SIZE, PROT_READ | PROT_WRITE,
                    MAP_PRIVATE | MAP_ANONYMOUS, 0, 0);
            FUNC5(copy, data, PAGE_SIZE);
            FUNC7(mem, page, 1, copy, 0, entry->flags &~ P_COW);
        }
#if ENGINE_JIT
        // get rid of any compiled blocks in this page
        jit_invalidate_page(mem->jit, page);
        mem_changed(mem);
#endif
    }

    if (entry == NULL)
        return NULL;
    return entry->data->data + entry->offset + FUNC1(addr);
}