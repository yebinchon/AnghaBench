#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_6__ {TYPE_1__ rect; } ;
typedef  TYPE_2__ Con ;

/* Variables and functions */
 scalar_t__ HORIZ ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 

uint32_t FUNC1(Con *con) {
    return (FUNC0(con) == HORIZ ? con->rect.width : con->rect.height);
}