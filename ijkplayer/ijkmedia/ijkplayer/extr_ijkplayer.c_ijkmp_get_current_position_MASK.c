#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {long seek_msec; int /*<<< orphan*/  mutex; scalar_t__ seek_req; } ;
typedef  TYPE_1__ IjkMediaPlayer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 long FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

long FUNC4(IjkMediaPlayer *mp)
{
    FUNC0(mp);
    FUNC2(&mp->mutex);
    long retval;
    if (mp->seek_req)
        retval = mp->seek_msec;
    else
        retval = FUNC1(mp);
    FUNC3(&mp->mutex);
    return retval;
}