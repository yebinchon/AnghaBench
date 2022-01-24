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
struct pt_entry {int flags; } ;
struct mem {int dummy; } ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int MEM_READ ; 
 int MEM_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int P_READ ; 
 int P_WRITE ; 
 int SEGV_ACCERR_ ; 
 int SEGV_MAPERR_ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct pt_entry* FUNC3 (struct mem*,int /*<<< orphan*/ ) ; 

int FUNC4(struct mem *mem, addr_t addr, int type) {
    FUNC1(type == MEM_READ || type == MEM_WRITE);
    struct pt_entry *pt = FUNC3(mem, FUNC0(addr));
    if (pt == NULL)
        return SEGV_MAPERR_;
    if ((type == MEM_READ && !(pt->flags & P_READ)) ||
            (type == MEM_WRITE && !(pt->flags & P_WRITE)))
        return SEGV_ACCERR_;
    FUNC2("caught segv for valid access");
}