#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_6__ {TYPE_3__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_8__ {scalar_t__ io_manager_ctx; } ;
struct TYPE_7__ {TYPE_3__* cur_ffmpeg_ctx; } ;
typedef  TYPE_2__ IjkIOManagerContext ;
typedef  TYPE_3__ Context ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int,int) ; 

__attribute__((used)) static int64_t FUNC1(URLContext *h, int64_t offset, int whence)
{
    Context *c = h->priv_data;

    if (!c || !c->io_manager_ctx)
        return -1;

    ((IjkIOManagerContext *)(c->io_manager_ctx))->cur_ffmpeg_ctx  = c;
    return FUNC0((IjkIOManagerContext *)(c->io_manager_ctx), offset, whence);
}