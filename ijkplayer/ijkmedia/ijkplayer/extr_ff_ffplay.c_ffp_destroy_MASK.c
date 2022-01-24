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
struct TYPE_6__ {int /*<<< orphan*/  msg_queue; int /*<<< orphan*/  vf_mutex; int /*<<< orphan*/  af_mutex; int /*<<< orphan*/  meta; int /*<<< orphan*/  pipeline; int /*<<< orphan*/  node_vdec; int /*<<< orphan*/  aout; int /*<<< orphan*/  vout; int /*<<< orphan*/ * is; } ;
typedef  TYPE_1__ FFPlayer ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

void FUNC11(FFPlayer *ffp)
{
    if (!ffp)
        return;

    if (ffp->is) {
        FUNC4(NULL, AV_LOG_WARNING, "ffp_destroy_ffplayer: force stream_close()");
        FUNC10(ffp);
        ffp->is = NULL;
    }

    FUNC2(&ffp->vout);
    FUNC0(&ffp->aout);
    FUNC7(&ffp->node_vdec);
    FUNC6(&ffp->pipeline);
    FUNC8(&ffp->meta);
    FUNC5(ffp);

    FUNC1(&ffp->af_mutex);
    FUNC1(&ffp->vf_mutex);

    FUNC9(&ffp->msg_queue);


    FUNC3(ffp);
}