#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  value; } ;
struct TYPE_14__ {int probesize; int format_probesize; int max_analyze_duration; int fps_probe_size; int max_ts_probe; int nb_streams; int /*<<< orphan*/ * streams; int /*<<< orphan*/  interrupt_callback; int /*<<< orphan*/ * metadata; TYPE_2__* priv_data; } ;
struct TYPE_12__ {int /*<<< orphan*/  url; } ;
struct TYPE_13__ {TYPE_3__* inner; TYPE_1__ io_control; scalar_t__ open_opts; } ;
typedef  TYPE_2__ Context ;
typedef  int /*<<< orphan*/  AVStream ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_DICT_MATCH_CASE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char*,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__**) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_3__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC12(AVFormatContext *avf)
{
    Context         *c          = avf->priv_data;
    AVDictionary    *tmp_opts   = NULL;
    AVFormatContext *new_avf    = NULL;
    int ret = -1;
    int i   = 0;
    AVDictionaryEntry *t = NULL;
    int fps_flag = 0;

    new_avf = FUNC5();
    if (!new_avf) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    if (c->open_opts)
        FUNC1(&tmp_opts, c->open_opts, 0);

    FUNC4(&tmp_opts, "probesize",         avf->probesize, 0);
    FUNC4(&tmp_opts, "formatprobesize",   avf->format_probesize, 0);
    FUNC4(&tmp_opts, "analyzeduration",   avf->max_analyze_duration, 0);
    FUNC4(&tmp_opts, "fpsprobesize",      avf->fps_probe_size, 0);
    FUNC4(&tmp_opts, "max_ts_probe",      avf->max_ts_probe, 0);

    t = FUNC3(tmp_opts, "skip-calc-frame-rate", NULL, AV_DICT_MATCH_CASE);
    if (t) {
        fps_flag = (int) FUNC11(t->value, NULL, 10);
        if (fps_flag > 0) {
            FUNC4(&new_avf->metadata, "skip-calc-frame-rate", fps_flag, 0);
        }
    }

    new_avf->interrupt_callback = avf->interrupt_callback;
    ret = FUNC9(&new_avf, c->io_control.url, NULL, &tmp_opts);
    if (ret < 0)
        goto fail;

    ret = FUNC7(new_avf, NULL);
    if (ret < 0)
        goto fail;

    for (i = 0; i < new_avf->nb_streams; i++) {
        AVStream *st = FUNC8(avf, NULL);
        if (!st) {
            ret = FUNC0(ENOMEM);
            goto fail;
        }

        ret = FUNC10(st, new_avf->streams[i]);
        if (ret < 0)
            goto fail;
    }

    FUNC6(&c->inner);
    c->inner = new_avf;
    new_avf = NULL;
    ret = 0;
fail:
    FUNC2(&tmp_opts);
    FUNC6(&new_avf);
    return ret;
}