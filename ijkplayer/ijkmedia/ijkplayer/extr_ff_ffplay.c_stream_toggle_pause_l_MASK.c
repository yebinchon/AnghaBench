#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {double last_updated; int paused; int /*<<< orphan*/  serial; } ;
struct TYPE_6__ {int paused; scalar_t__ read_pause_return; TYPE_4__ extclk; TYPE_4__ vidclk; TYPE_4__ audclk; scalar_t__ buffering_on; scalar_t__ pause_req; scalar_t__ step; int /*<<< orphan*/  frame_timer; } ;
typedef  TYPE_1__ VideoState ;
struct TYPE_7__ {int /*<<< orphan*/  aout; TYPE_1__* is; } ;
typedef  TYPE_2__ FFPlayer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 double FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(FFPlayer *ffp, int pause_on)
{
    VideoState *is = ffp->is;
    if (is->paused && !pause_on) {
        is->frame_timer += FUNC2() / 1000000.0 - is->vidclk.last_updated;

#ifdef FFP_MERGE
        if (is->read_pause_return != AVERROR(ENOSYS)) {
            is->vidclk.paused = 0;
        }
#endif
        FUNC4(&is->vidclk, FUNC3(&is->vidclk), is->vidclk.serial);
        FUNC4(&is->audclk, FUNC3(&is->audclk), is->audclk.serial);
    } else {
    }
    FUNC4(&is->extclk, FUNC3(&is->extclk), is->extclk.serial);
    if (is->step && (is->pause_req || is->buffering_on)) {
        is->paused = is->vidclk.paused = is->extclk.paused = pause_on;
    } else {
        is->paused = is->audclk.paused = is->vidclk.paused = is->extclk.paused = pause_on;
        FUNC1(ffp->aout, pause_on);
    }
}