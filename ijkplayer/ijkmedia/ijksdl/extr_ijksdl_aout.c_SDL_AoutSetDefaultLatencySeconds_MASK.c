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
struct TYPE_4__ {double minimal_latency_seconds; int /*<<< orphan*/  (* func_set_default_latency_seconds ) (TYPE_1__*,double) ;} ;
typedef  TYPE_1__ SDL_Aout ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,double) ; 

void FUNC1(SDL_Aout *aout, double latency)
{
    if (aout) {
        if (aout->func_set_default_latency_seconds)
            aout->func_set_default_latency_seconds(aout, latency);
        aout->minimal_latency_seconds = latency;
    }
}