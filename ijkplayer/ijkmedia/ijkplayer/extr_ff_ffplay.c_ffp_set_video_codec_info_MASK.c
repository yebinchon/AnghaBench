#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  video_codec_info; } ;
typedef  TYPE_1__ FFPlayer ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC3(FFPlayer *ffp, const char *module, const char *codec)
{
    FUNC1(&ffp->video_codec_info);
    ffp->video_codec_info = FUNC0("%s, %s", module ? module : "", codec ? codec : "");
    FUNC2(ffp, AV_LOG_INFO, "VideoCodec: %s\n", ffp->video_codec_info);
}