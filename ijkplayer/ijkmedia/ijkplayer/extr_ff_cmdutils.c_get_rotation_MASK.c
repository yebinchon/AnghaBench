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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_7__ {scalar_t__* value; } ;
struct TYPE_6__ {int /*<<< orphan*/  metadata; } ;
typedef  TYPE_1__ AVStream ;
typedef  TYPE_2__ AVDictionaryEntry ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  AV_PKT_DATA_DISPLAYMATRIX ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 double FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 double FUNC4 (scalar_t__*,char**) ; 
 int FUNC5 (double) ; 
 int FUNC6 (double) ; 
 int FUNC7 (double) ; 
 scalar_t__ FUNC8 (scalar_t__*,char*) ; 

double FUNC9(AVStream *st)
{
    AVDictionaryEntry *rotate_tag = FUNC0(st->metadata, "rotate", NULL, 0);
    uint8_t* displaymatrix = FUNC3(st,
                                                     AV_PKT_DATA_DISPLAYMATRIX, NULL);
    double theta = 0;

    if (rotate_tag && *rotate_tag->value && FUNC8(rotate_tag->value, "0")) {
        char *tail;
        theta = FUNC4(rotate_tag->value, &tail);
        if (*tail)
            theta = 0;
    }
    if (displaymatrix && !theta)
        theta = -FUNC1((int32_t*) displaymatrix);

    theta -= 360*FUNC6(theta/360 + 0.9/360);

    if (FUNC5(theta - 90*FUNC7(theta/90)) > 2)
        FUNC2(NULL, AV_LOG_WARNING, "Odd rotation angle.\n"
               "If you want to help, upload a sample "
               "of this file to ftp://upload.ffmpeg.org/incoming/ "
               "and contact the ffmpeg-devel mailing list. (ffmpeg-devel@ffmpeg.org)");

    return theta;
}