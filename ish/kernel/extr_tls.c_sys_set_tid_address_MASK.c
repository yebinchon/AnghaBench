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
typedef  int /*<<< orphan*/  addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  clear_tid; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 int FUNC0 () ; 

int FUNC1(addr_t tid) {
    current->clear_tid = tid;
    return FUNC0();
}