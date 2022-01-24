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
struct TYPE_5__ {int /*<<< orphan*/  meta; int /*<<< orphan*/ * av_class; void* vf_mutex; void* af_mutex; int /*<<< orphan*/  msg_queue; } ;
typedef  TYPE_1__ FFPlayer ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_INFO ; 
 void* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ffp_context_class ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

FFPlayer *FUNC9()
{
    FUNC1(NULL, AV_LOG_INFO, "av_version_info: %s\n", FUNC4());
    FUNC1(NULL, AV_LOG_INFO, "ijk_version_info: %s\n", FUNC6());

    FFPlayer* ffp = (FFPlayer*) FUNC2(sizeof(FFPlayer));
    if (!ffp)
        return NULL;

    FUNC8(&ffp->msg_queue);
    ffp->af_mutex = FUNC0();
    ffp->vf_mutex = FUNC0();

    FUNC5(ffp);
    ffp->av_class = &ffp_context_class;
    ffp->meta = FUNC7();

    FUNC3(ffp);

    return ffp;
}