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
struct pt_entry {int flags; } ;
typedef  scalar_t__ pages_t ;
typedef  scalar_t__ page_t ;
typedef  int int_t ;
typedef  int dword_t ;
typedef  int addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MREMAP_FIXED_ ; 
 int MREMAP_MAYMOVE_ ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int P_ANONYMOUS ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,int) ; 
 int _EFAULT ; 
 int _EINVAL ; 
 int _ENOMEM ; 
 TYPE_1__* current ; 
 struct pt_entry* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

int_t FUNC8(addr_t addr, dword_t old_len, dword_t new_len, dword_t flags) {
    FUNC3("mremap(%#x, %#x, %#x, %d)", addr, old_len, new_len, flags);
    if (FUNC2(addr) != 0)
        return _EINVAL;
    if (flags & ~(MREMAP_MAYMOVE_ | MREMAP_FIXED_))
        return _EINVAL;
    if (flags & MREMAP_FIXED_) {
        FUNC0("missing MREMAP_FIXED");
        return _EINVAL;
    }
    pages_t old_pages = FUNC1(old_len);
    pages_t new_pages = FUNC1(new_len);

    // shrinking always works
    if (new_pages <= old_pages) {
        int err = FUNC7(current->mem, FUNC1(addr) + new_pages, old_pages - new_pages);
        if (err < 0)
            return _EFAULT;
        return addr;
    }

    struct pt_entry *entry = FUNC4(current->mem, FUNC1(addr));
    if (entry == NULL)
        return _EFAULT;
    dword_t pt_flags = entry->flags;
    for (page_t page = FUNC1(addr); page < FUNC1(addr) + old_pages; page++) {
        entry = FUNC4(current->mem, page);
        if (entry == NULL && entry->flags != pt_flags)
            return _EFAULT;
    }
    if (!(pt_flags & P_ANONYMOUS)) {
        FUNC0("mremap grow on file mappings");
        return _EFAULT;
    }
    page_t extra_start = FUNC1(addr) + old_pages;
    pages_t extra_pages = new_pages - old_pages;
    if (!FUNC5(current->mem, extra_start, extra_pages))
        return _ENOMEM;
    int err = FUNC6(current->mem, extra_start, extra_pages, pt_flags);
    if (err < 0)
        return err;
    return addr;
}