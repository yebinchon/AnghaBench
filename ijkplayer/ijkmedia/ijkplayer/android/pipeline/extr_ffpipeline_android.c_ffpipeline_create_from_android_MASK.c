#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  func_config_video_decoder; int /*<<< orphan*/  func_init_video_decoder; int /*<<< orphan*/  func_open_audio_output; int /*<<< orphan*/  func_open_video_decoder; int /*<<< orphan*/  func_destroy; TYPE_1__* opaque; } ;
struct TYPE_6__ {float left_volume; float right_volume; int /*<<< orphan*/  surface_mutex; int /*<<< orphan*/ * ffp; } ;
typedef  TYPE_1__ IJKFF_Pipeline_Opaque ;
typedef  TYPE_2__ IJKFF_Pipeline ;
typedef  int /*<<< orphan*/  FFPlayer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**) ; 
 int /*<<< orphan*/  func_config_video_decoder ; 
 int /*<<< orphan*/  func_destroy ; 
 int /*<<< orphan*/  func_init_video_decoder ; 
 int /*<<< orphan*/  func_open_audio_output ; 
 int /*<<< orphan*/  func_open_video_decoder ; 
 int /*<<< orphan*/  g_pipeline_class ; 

IJKFF_Pipeline *FUNC5(FFPlayer *ffp)
{
    FUNC0("ffpipeline_create_from_android()\n");
    IJKFF_Pipeline *pipeline = FUNC3(&g_pipeline_class, sizeof(IJKFF_Pipeline_Opaque));
    if (!pipeline)
        return pipeline;

    IJKFF_Pipeline_Opaque *opaque = pipeline->opaque;
    opaque->ffp                   = ffp;
    opaque->surface_mutex         = FUNC2();
    opaque->left_volume           = 1.0f;
    opaque->right_volume          = 1.0f;
    if (!opaque->surface_mutex) {
        FUNC1("ffpipeline-android:create SDL_CreateMutex failed\n");
        goto fail;
    }

    pipeline->func_destroy              = func_destroy;
    pipeline->func_open_video_decoder   = func_open_video_decoder;
    pipeline->func_open_audio_output    = func_open_audio_output;
    pipeline->func_init_video_decoder   = func_init_video_decoder;
    pipeline->func_config_video_decoder = func_config_video_decoder;

    return pipeline;
fail:
    FUNC4(&pipeline);
    return NULL;
}