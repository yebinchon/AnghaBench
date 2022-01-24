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
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ IjkMediaMeta ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

IjkMediaMeta *FUNC3()
{
    IjkMediaMeta *meta = (IjkMediaMeta *)FUNC1(1, sizeof(IjkMediaMeta));
    if (!meta)
        return NULL;

    meta->mutex = FUNC0();
    if (!meta->mutex)
        goto fail;

    return meta;
fail:
    FUNC2(meta);
    return NULL;
}