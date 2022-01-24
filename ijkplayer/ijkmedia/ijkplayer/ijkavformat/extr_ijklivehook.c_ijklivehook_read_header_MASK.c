#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  filename; TYPE_2__* priv_data; } ;
struct TYPE_8__ {int size; scalar_t__ retry_counter; int /*<<< orphan*/  url; } ;
struct TYPE_9__ {int discontinuity; TYPE_1__ io_control; int /*<<< orphan*/  open_opts; scalar_t__ app_ctx_intptr; int /*<<< orphan*/ * app_ctx; } ;
typedef  TYPE_2__ Context ;
typedef  TYPE_3__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  int /*<<< orphan*/  AVApplicationContext ;

/* Variables and functions */
#define  AVERROR_EXIT 128 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const**) ; 
 int FUNC5 (TYPE_3__*) ; 
 int FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *avf, AVDictionary **options)
{
    Context    *c           = avf->priv_data;
    const char *inner_url   = NULL;
    int         ret         = -1;

    c->app_ctx = (AVApplicationContext *)(intptr_t)c->app_ctx_intptr;
    FUNC4(avf->filename, "ijklivehook:", &inner_url);

    c->io_control.size = sizeof(c->io_control);
    FUNC7(c->io_control.url, inner_url, sizeof(c->io_control.url));

    if (FUNC3(c->io_control.url, "rtmp", NULL) ||
        FUNC3(c->io_control.url, "rtsp", NULL)) {
        // There is total different meaning for 'timeout' option in rtmp
        FUNC2(avf, AV_LOG_WARNING, "remove 'timeout' option for rtmp.\n");
        FUNC1(options, "timeout", NULL, 0);
    }

    if (options)
        FUNC0(&c->open_opts, *options, 0);

    c->io_control.retry_counter = 0;
    ret = FUNC5(avf);
    if (ret) {
        ret = AVERROR_EXIT;
        goto fail;
    }
    ret = FUNC6(avf);
    while (ret < 0) {
        // no EOF in live mode
        switch (ret) {
            case AVERROR_EXIT:
                goto fail;
        }

        c->io_control.retry_counter++;
        ret = FUNC5(avf);
        if (ret) {
            ret = AVERROR_EXIT;
            goto fail;
        }

        c->discontinuity = 1;
        ret = FUNC6(avf);
    }

    return 0;
fail:
    return ret;
}