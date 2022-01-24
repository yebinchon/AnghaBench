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
struct futex {scalar_t__ mem; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  dword_t ;
struct TYPE_2__ {scalar_t__ mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct futex *futex, dword_t *out) {
    FUNC0(futex->mem == current->mem);
    dword_t *ptr = FUNC1(current->mem, futex->addr, MEM_READ);
    if (ptr == NULL)
        return 1;
    *out = *ptr;
    return 0;
}