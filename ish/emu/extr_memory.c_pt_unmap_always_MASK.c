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
struct pt_entry {struct data* data; } ;
struct mem {int /*<<< orphan*/  jit; } ;
struct data {scalar_t__ refcount; scalar_t__ data; int /*<<< orphan*/ * fd; int /*<<< orphan*/  size; } ;
typedef  scalar_t__ pages_t ;
typedef  scalar_t__ page_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct mem*) ; 
 int /*<<< orphan*/  FUNC5 (struct mem*,scalar_t__*) ; 
 struct pt_entry* FUNC6 (struct mem*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct mem*,scalar_t__) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ vdso_data ; 

int FUNC10(struct mem *mem, page_t start, pages_t pages) {
    for (page_t page = start; page < start + pages; FUNC5(mem, &page)) {
        struct pt_entry *pt = FUNC6(mem, page);
        if (pt == NULL)
            continue;
#if ENGINE_JIT
        jit_invalidate_page(mem->jit, page);
#endif
        struct data *data = pt->data;
        FUNC7(mem, page);
        if (--data->refcount == 0) {
            // vdso wasn't allocated with mmap, it's just in our data segment
            if (data->data != vdso_data) {
                int err = FUNC8(data->data, data->size);
                if (err != 0)
                    FUNC0("munmap(%p, %lu) failed: %s", data->data, data->size, FUNC9(errno));
            }
            if (data->fd != NULL) {
                FUNC1(data->fd);
            }
            FUNC2(data);
        }
    }
    FUNC4(mem);
    return 0;
}