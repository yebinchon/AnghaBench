#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int height; } ;
struct TYPE_5__ {TYPE_1__ deco_rect; int /*<<< orphan*/  parent; } ;
typedef  TYPE_2__ Con ;

/* Variables and functions */
 scalar_t__ HORIZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

double FUNC2(Con *con) {
    const int parent_size = FUNC1(con->parent);
    /* deco_rect.height is subtracted from each child in render_con_split */
    const int min_size = (FUNC0(con->parent) == HORIZ ? 1 : 1 + con->deco_rect.height);
    return ((double)min_size / (double)parent_size);
}