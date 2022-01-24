#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  serial; } ;
struct TYPE_7__ {int pause_req; scalar_t__ step; TYPE_5__ audclk; TYPE_5__ vidclk; } ;
typedef  TYPE_1__ VideoState ;
struct TYPE_8__ {int auto_resume; TYPE_1__* is; } ;
typedef  TYPE_2__ FFPlayer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(FFPlayer *ffp, int pause_on)
{
    VideoState *is = ffp->is;
    if (is->pause_req && !pause_on) {
        FUNC1(&is->vidclk, FUNC0(&is->vidclk), is->vidclk.serial);
        FUNC1(&is->audclk, FUNC0(&is->audclk), is->audclk.serial);
    }
    is->pause_req = pause_on;
    ffp->auto_resume = !pause_on;
    FUNC2(ffp);
    is->step = 0;
}