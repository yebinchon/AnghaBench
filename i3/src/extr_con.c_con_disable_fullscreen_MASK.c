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
struct TYPE_4__ {scalar_t__ type; scalar_t__ fullscreen_mode; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 scalar_t__ CF_NONE ; 
 scalar_t__ CT_WORKSPACE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 

void FUNC2(Con *con) {
    if (con->type == CT_WORKSPACE) {
        FUNC0("You cannot make a workspace fullscreen.\n");
        return;
    }

    FUNC0("disabling fullscreen for %p / %s\n", con, con->name);

    if (con->fullscreen_mode == CF_NONE) {
        FUNC0("fullscreen already disabled for %p / %s\n", con, con->name);
        return;
    }

    FUNC1(con, CF_NONE);
}