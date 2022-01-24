#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* parent; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */

bool FUNC0(Con *con, Con *parent) {
    Con *current = con->parent;
    if (current == NULL) {
        return false;
    }

    if (current == parent) {
        return true;
    }

    return FUNC0(current, parent);
}