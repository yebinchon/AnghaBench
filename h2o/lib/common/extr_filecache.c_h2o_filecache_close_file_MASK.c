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
struct TYPE_4__ {scalar_t__ _refcnt; int fd; int /*<<< orphan*/  _lru; } ;
typedef  TYPE_1__ h2o_filecache_ref_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(h2o_filecache_ref_t *ref)
{
    if (--ref->_refcnt != 0)
        return;
    FUNC0(!FUNC3(&ref->_lru));
    if (ref->fd != -1) {
        FUNC1(ref->fd);
        ref->fd = -1;
    }
    FUNC2(ref);
}