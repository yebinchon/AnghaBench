#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_4__ {int /*<<< orphan*/  video_st; } ;
typedef  TYPE_1__ VideoState ;
struct TYPE_5__ {TYPE_1__* is; } ;
typedef  TYPE_2__ FFPlayer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(FFPlayer *ffp)
{
    VideoState *is = ffp->is;
    if (!is)
        return 0;

    int theta  = FUNC1((int)((int64_t)FUNC4(FUNC2(FUNC3(is->video_st))) % 360));
    switch (theta) {
        case 0:
        case 90:
        case 180:
        case 270:
            break;
        case 360:
            theta = 0;
            break;
        default:
            FUNC0("Unknown rotate degress: %d\n", theta);
            theta = 0;
            break;
    }

    return theta;
}