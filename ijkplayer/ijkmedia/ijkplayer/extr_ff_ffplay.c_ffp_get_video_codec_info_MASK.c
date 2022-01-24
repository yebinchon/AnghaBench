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
struct TYPE_3__ {scalar_t__ video_codec_info; } ;
typedef  TYPE_1__ FFPlayer ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 

int FUNC1(FFPlayer *ffp, char **codec_info)
{
    if (!codec_info)
        return -1;

    // FIXME: not thread-safe
    if (ffp->video_codec_info) {
        *codec_info = FUNC0(ffp->video_codec_info);
    } else {
        *codec_info = NULL;
    }
    return 0;
}