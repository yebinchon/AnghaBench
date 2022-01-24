#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dword_t ;
struct TYPE_3__ {scalar_t__ esp; int /*<<< orphan*/  eip; int /*<<< orphan*/  ebp; } ;
struct TYPE_4__ {TYPE_1__ cpu; } ;

/* Variables and functions */
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC2() {
    FUNC0("stack at %x, base at %x, ip at %x\n", current->cpu.esp, current->cpu.ebp, current->cpu.eip);
    for (int i = 0; i < 64; i++) {
        dword_t stackword;
        if (FUNC1(current->cpu.esp + (i * 4), stackword))
            break;
        FUNC0("%08x ", stackword);
        if (i % 8 == 7)
            FUNC0("\n");
    }
}