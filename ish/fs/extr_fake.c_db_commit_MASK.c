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
struct TYPE_2__ {int /*<<< orphan*/  commit; } ;
struct mount {int /*<<< orphan*/  lock; TYPE_1__ stmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct mount *mount) {
    FUNC0(mount, mount->stmt.commit);
    FUNC1(&mount->lock);
}