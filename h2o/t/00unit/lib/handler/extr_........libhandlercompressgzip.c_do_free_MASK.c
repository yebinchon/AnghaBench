#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ do_transform; TYPE_3__* push_buf; } ;
struct TYPE_4__ {size_t size; TYPE_3__* entries; } ;
struct st_gzip_context_t {TYPE_2__ super; TYPE_1__ bufs; int /*<<< orphan*/  zs; scalar_t__ zs_is_open; } ;
struct TYPE_6__ {struct TYPE_6__* raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ do_compress ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *_self)
{
    struct st_gzip_context_t *self = _self;
    size_t i;

    if (self->zs_is_open) {
        if (self->super.do_transform == do_compress) {
            FUNC0(&self->zs);
        } else {
            FUNC2(&self->zs);
        }
    }

    for (i = 0; i != self->bufs.size; ++i)
        FUNC1(self->bufs.entries[i].raw);
    FUNC1(self->bufs.entries);
    FUNC1(self->super.push_buf);
}