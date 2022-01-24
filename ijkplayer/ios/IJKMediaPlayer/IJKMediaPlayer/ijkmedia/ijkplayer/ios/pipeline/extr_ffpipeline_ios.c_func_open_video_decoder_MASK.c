#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  vdec_type; } ;
struct TYPE_13__ {TYPE_1__ stat; scalar_t__ videotoolbox; } ;
struct TYPE_12__ {TYPE_2__* opaque; } ;
struct TYPE_11__ {int is_videotoolbox_open; } ;
typedef  int /*<<< orphan*/  IJKFF_Pipenode ;
typedef  TYPE_2__ IJKFF_Pipeline_Opaque ;
typedef  TYPE_3__ IJKFF_Pipeline ;
typedef  TYPE_4__ FFPlayer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FFP_MSG_VIDEO_DECODER_OPEN ; 
 int /*<<< orphan*/  FFP_PROPV_DECODER_AVCODEC ; 
 int /*<<< orphan*/  FFP_PROPV_DECODER_VIDEOTOOLBOX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_4__*) ; 

__attribute__((used)) static IJKFF_Pipenode *FUNC4(IJKFF_Pipeline *pipeline, FFPlayer *ffp)
{
    IJKFF_Pipenode* node = NULL;
    IJKFF_Pipeline_Opaque *opaque = pipeline->opaque;
    if (ffp->videotoolbox) {
        node = FUNC3(ffp);
        if (!node)
            FUNC0("vtb fail!!! switch to ffmpeg decode!!!! \n");
    }
    if (node == NULL) {
        node = FUNC2(ffp);
        ffp->stat.vdec_type = FFP_PROPV_DECODER_AVCODEC;
        opaque->is_videotoolbox_open = false;
    } else {
        ffp->stat.vdec_type = FFP_PROPV_DECODER_VIDEOTOOLBOX;
        opaque->is_videotoolbox_open = true;
    }
    FUNC1(ffp, FFP_MSG_VIDEO_DECODER_OPEN, opaque->is_videotoolbox_open);
    return node;
}