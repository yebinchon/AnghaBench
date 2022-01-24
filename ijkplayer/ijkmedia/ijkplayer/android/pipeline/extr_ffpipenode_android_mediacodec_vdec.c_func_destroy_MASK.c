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
struct TYPE_5__ {TYPE_1__* opaque; } ;
struct TYPE_4__ {int /*<<< orphan*/ * jsurface; int /*<<< orphan*/  codecpar; int /*<<< orphan*/ * bsfc; int /*<<< orphan*/  orig_extradata; int /*<<< orphan*/  output_aformat; int /*<<< orphan*/  input_aformat; int /*<<< orphan*/  acodec; int /*<<< orphan*/  acodec_first_dequeue_output_mutex; int /*<<< orphan*/  acodec_first_dequeue_output_cond; int /*<<< orphan*/  acodec_mutex; int /*<<< orphan*/  acodec_cond; int /*<<< orphan*/  any_input_mutex; int /*<<< orphan*/  any_input_cond; } ;
typedef  int /*<<< orphan*/  JNIEnv ;
typedef  TYPE_1__ IJKFF_Pipenode_Opaque ;
typedef  TYPE_2__ IJKFF_Pipenode ;

/* Variables and functions */
 scalar_t__ JNI_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(IJKFF_Pipenode *node)
{
    if (!node || !node->opaque)
        return;

    IJKFF_Pipenode_Opaque *opaque = node->opaque;

    FUNC2(&opaque->any_input_cond);
    FUNC3(&opaque->any_input_mutex);
    FUNC2(&opaque->acodec_cond);
    FUNC3(&opaque->acodec_mutex);
    FUNC2(&opaque->acodec_first_dequeue_output_cond);
    FUNC3(&opaque->acodec_first_dequeue_output_mutex);

    FUNC0(&opaque->acodec);
    FUNC1(&opaque->input_aformat);
    FUNC1(&opaque->output_aformat);

#if AMC_USE_AVBITSTREAM_FILTER
    av_freep(&opaque->orig_extradata);

    if (opaque->bsfc) {
        av_bitstream_filter_close(opaque->bsfc);
        opaque->bsfc = NULL;
    }
#endif

    FUNC8(&opaque->codecpar);

    JNIEnv *env = NULL;
    if (JNI_OK == FUNC5(&env)) {
        if (opaque->jsurface != NULL) {
            FUNC4(env, &opaque->jsurface);
        }
    }
}