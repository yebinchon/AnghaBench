#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_6__ {TYPE_1__* opaque; } ;
struct TYPE_5__ {int /*<<< orphan*/  acodec_mutex; int /*<<< orphan*/  acodec_cond; scalar_t__ acodec_reconfigure_request; scalar_t__ acodec_flush_request; } ;
typedef  int /*<<< orphan*/  JNIEnv ;
typedef  TYPE_1__ IJKFF_Pipenode_Opaque ;
typedef  TYPE_2__ IJKFF_Pipenode ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC4(JNIEnv *env, IJKFF_Pipenode *node, int64_t timeUs, int *dequeue_count, AVFrame *frame, int *got_frame)
{
    IJKFF_Pipenode_Opaque *opaque = node->opaque;
    FUNC1(opaque->acodec_mutex);

    if (opaque->acodec_flush_request || opaque->acodec_reconfigure_request) {
        // TODO: invalid picture here?
        // let feed_input_buffer() get mutex
        FUNC0(opaque->acodec_cond, opaque->acodec_mutex, 100);
    }

    int ret = FUNC3(env, node, timeUs, dequeue_count, frame, got_frame);
    FUNC2(opaque->acodec_mutex);
    return ret;
}