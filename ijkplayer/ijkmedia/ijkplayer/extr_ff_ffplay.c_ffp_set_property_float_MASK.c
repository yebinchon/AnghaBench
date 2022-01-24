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
typedef  int /*<<< orphan*/  FFPlayer ;

/* Variables and functions */
#define  FFP_PROP_FLOAT_PLAYBACK_RATE 129 
#define  FFP_PROP_FLOAT_PLAYBACK_VOLUME 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,float) ; 

void FUNC2(FFPlayer *ffp, int id, float value)
{
    switch (id) {
        case FFP_PROP_FLOAT_PLAYBACK_RATE:
            FUNC0(ffp, value);
            break;
        case FFP_PROP_FLOAT_PLAYBACK_VOLUME:
            FUNC1(ffp, value);
            break;
        default:
            return;
    }
}