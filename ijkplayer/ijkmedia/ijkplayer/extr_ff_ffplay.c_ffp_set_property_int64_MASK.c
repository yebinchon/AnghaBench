#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_3__ {int /*<<< orphan*/  ijkio_manager_ctx; } ;
typedef  TYPE_1__ FFPlayer ;

/* Variables and functions */
#define  FFP_PROP_INT64_IMMEDIATE_RECONNECT 129 
#define  FFP_PROP_INT64_SHARE_CACHE_DATA 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(FFPlayer *ffp, int id, int64_t value)
{
    switch (id) {
        // case FFP_PROP_INT64_SELECTED_VIDEO_STREAM:
        // case FFP_PROP_INT64_SELECTED_AUDIO_STREAM:
        case FFP_PROP_INT64_SHARE_CACHE_DATA:
            if (ffp) {
                if (value) {
                    FUNC2(ffp->ijkio_manager_ctx);
                } else {
                    FUNC0(ffp->ijkio_manager_ctx);
                }
            }
            break;
        case FFP_PROP_INT64_IMMEDIATE_RECONNECT:
            if (ffp) {
                FUNC1(ffp->ijkio_manager_ctx);
            }
        default:
            break;
    }
}