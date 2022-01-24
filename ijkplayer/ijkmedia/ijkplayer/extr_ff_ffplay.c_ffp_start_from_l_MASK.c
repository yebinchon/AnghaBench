#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VideoState ;
struct TYPE_6__ {int auto_resume; int /*<<< orphan*/ * is; } ;
typedef  TYPE_1__ FFPlayer ;

/* Variables and functions */
 int EIJK_NULL_IS_PTR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,long) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

int FUNC3(FFPlayer *ffp, long msec)
{
    FUNC0(ffp);
    VideoState *is = ffp->is;
    if (!is)
        return EIJK_NULL_IS_PTR;

    ffp->auto_resume = 1;
    FUNC2(ffp, 1);
    FUNC1(ffp, msec);
    return 0;
}