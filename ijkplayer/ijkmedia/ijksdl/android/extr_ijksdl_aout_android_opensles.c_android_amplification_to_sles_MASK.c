#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ SLmillibel ;

/* Variables and functions */
 scalar_t__ SL_MILLIBEL_MIN ; 
 float FUNC0 (float) ; 
 scalar_t__ FUNC1 (float) ; 

__attribute__((used)) static inline SLmillibel FUNC2(float volumeLevel) {
    // FIXME use the FX Framework conversions
    if (volumeLevel < 0.00000001)
        return SL_MILLIBEL_MIN;

    SLmillibel mb = FUNC1(2000.f * FUNC0(volumeLevel));
    if (mb < SL_MILLIBEL_MIN)
        mb = SL_MILLIBEL_MIN;
    else if (mb > 0)
        mb = 0; /* maximum supported level could be higher: GetMaxVolumeLevel */
    return mb;
}