#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ extradata_size; scalar_t__ extradata; scalar_t__ codec_id; } ;
struct TYPE_7__ {int /*<<< orphan*/  metadata; int /*<<< orphan*/  sample_aspect_ratio; int /*<<< orphan*/  time_base; int /*<<< orphan*/  avg_frame_rate; int /*<<< orphan*/  r_frame_rate; TYPE_2__* codecpar; } ;
typedef  TYPE_1__ AVStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(AVStream *st, AVStream *source_st)
{
    int ret;

    if (st->codecpar->codec_id || !source_st->codecpar->codec_id) {
        if (st->codecpar->extradata_size < source_st->codecpar->extradata_size) {
            if (st->codecpar->extradata) {
                FUNC1(&st->codecpar->extradata);
                st->codecpar->extradata_size = 0;
            }
            ret = FUNC3(st->codecpar,
                                     source_st->codecpar->extradata_size);
            if (ret < 0)
                return ret;
        }
        FUNC4(st->codecpar->extradata, source_st->codecpar->extradata,
               source_st->codecpar->extradata_size);
        return 0;
    }
    if ((ret = FUNC2(st->codecpar, source_st->codecpar)) < 0)
        return ret;
    st->r_frame_rate        = source_st->r_frame_rate;
    st->avg_frame_rate      = source_st->avg_frame_rate;
    st->time_base           = source_st->time_base;
    st->sample_aspect_ratio = source_st->sample_aspect_ratio;

    FUNC0(&st->metadata, source_st->metadata, 0);
    return 0;
}