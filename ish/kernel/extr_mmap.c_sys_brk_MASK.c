#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct mm {scalar_t__ start_brk; scalar_t__ brk; TYPE_1__ mem; } ;
typedef  scalar_t__ addr_t ;
struct TYPE_5__ {struct mm* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  P_WRITE ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 scalar_t__ _EINVAL ; 
 TYPE_3__* current ; 
 int FUNC3 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

addr_t FUNC7(addr_t new_brk) {
    FUNC2("brk(0x%x)", new_brk);
    struct mm *mm = current->mm;

    if (new_brk != 0 && new_brk < mm->start_brk)
        return _EINVAL;
    FUNC5(&mm->mem.lock);
    addr_t old_brk = mm->brk;
    if (new_brk == 0) {
        FUNC6(&mm->mem.lock);
        return old_brk;
    }
    // TODO check for not going too high

    if (new_brk > old_brk) {
        // expand heap: map region from old_brk to new_brk
        int err = FUNC3(&mm->mem, FUNC1(old_brk),
                FUNC1(new_brk) - FUNC1(old_brk), P_WRITE);
        if (err < 0) {
            FUNC6(&mm->mem.lock);
            return err;
        }
    } else if (new_brk < old_brk) {
        // shrink heap: unmap region from new_brk to old_brk
        // first page to unmap is PAGE(new_brk)
        // last page to unmap is PAGE(old_brk)
        FUNC4(&mm->mem, FUNC0(new_brk), FUNC0(old_brk));
    }

    mm->brk = new_brk;
    FUNC6(&mm->mem.lock);
    return new_brk;
}