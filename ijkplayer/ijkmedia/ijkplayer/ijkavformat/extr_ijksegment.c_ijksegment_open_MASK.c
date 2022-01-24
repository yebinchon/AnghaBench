#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  io_control ;
struct TYPE_7__ {int /*<<< orphan*/  protocol_blacklist; int /*<<< orphan*/  protocol_whitelist; int /*<<< orphan*/  interrupt_callback; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_9__ {int size; int segment_index; int /*<<< orphan*/ * url; int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {int app_ctx_intptr; int /*<<< orphan*/  inner; } ;
typedef  TYPE_2__ Context ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  int /*<<< orphan*/  AVApplicationContext ;
typedef  TYPE_3__ AVAppIOControl ;

/* Variables and functions */
 int /*<<< orphan*/  AVAPP_CTRL_WILL_CONCAT_SEGMENT_OPEN ; 
 int AVERROR_EXIT ; 
 int AVERROR_EXTERNAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,char const**) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(URLContext *h, const char *arg, int flags, AVDictionary **options)
{
    Context *c = h->priv_data;
    AVAppIOControl io_control = {0};
    AVApplicationContext *app_ctx = (AVApplicationContext *)(intptr_t)c->app_ctx_intptr;
    int ret = -1;
    int segment_index = -1;

    FUNC2(arg, "ijksegment:", &arg);

    if (!arg || !*arg)
        return AVERROR_EXTERNAL;

    segment_index = (int)FUNC5(arg, NULL, 0);
    io_control.size = sizeof(io_control);
    io_control.segment_index = segment_index;
    FUNC4(io_control.url,    arg,    sizeof(io_control.url));

    if (app_ctx && io_control.segment_index < 0) {
        ret = AVERROR_EXTERNAL;
        goto fail;
    }
    ret = FUNC0(app_ctx, AVAPP_CTRL_WILL_CONCAT_SEGMENT_OPEN, &io_control);
    if (ret || !io_control.url[0]) {
        ret = AVERROR_EXIT;
        goto fail;
    }

    FUNC1(options, "ijkapplication", c->app_ctx_intptr, 0);
    FUNC1(options, "ijkinject-segment-index", segment_index, 0);

    ret = FUNC3(&c->inner,
                               io_control.url,
                               flags,
                               &h->interrupt_callback,
                               options,
                               h->protocol_whitelist,
                               h->protocol_blacklist,
                               h);
    if (ret)
        goto fail;

    return 0;
fail:
    return ret;
}