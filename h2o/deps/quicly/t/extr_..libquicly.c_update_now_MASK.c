#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_3__* now; } ;
typedef  TYPE_1__ quicly_context_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_5__ {scalar_t__ (* cb ) (TYPE_3__*) ;} ;

/* Variables and functions */
 scalar_t__ now ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC1(quicly_context_t *ctx)
{
    int64_t newval = ctx->now->cb(ctx->now);

    if (now < newval)
        now = newval;
}