#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ is_streamed; int /*<<< orphan*/  protocol_blacklist; int /*<<< orphan*/  protocol_whitelist; int /*<<< orphan*/  interrupt_callback; TYPE_3__* priv_data; } ;
typedef  TYPE_2__ URLContext ;
struct TYPE_9__ {int /*<<< orphan*/  url; } ;
struct TYPE_11__ {int logical_size; scalar_t__ io_error; TYPE_2__* inner; void* logical_pos; int /*<<< orphan*/  inner_flags; TYPE_1__ app_io_ctrl; int /*<<< orphan*/ * inner_options; scalar_t__ test_fail_point; int /*<<< orphan*/  test_fail_point_next; } ;
typedef  TYPE_3__ Context ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  AVSEEK_SIZE ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**) ; 
 int FUNC4 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 void* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(URLContext *h, AVDictionary *extra)
{
    Context *c = h->priv_data;
    int ret = 0;
    URLContext *new_url = NULL;
    AVDictionary *inner_options = NULL;

    c->test_fail_point_next += c->test_fail_point;

    FUNC0(c->inner_options);
    FUNC1(&inner_options, c->inner_options, 0);
    if (extra)
        FUNC1(&inner_options, extra, 0);

    ret = FUNC4(&new_url,
                               c->app_io_ctrl.url,
                               c->inner_flags,
                               &h->interrupt_callback,
                               &inner_options,
                               h->protocol_whitelist,
                               h->protocol_blacklist,
                               h);
    if (ret)
        goto fail;

    FUNC3(&c->inner);

    c->inner        = new_url;
    h->is_streamed  = c->inner->is_streamed;
    c->logical_pos  = FUNC5(c->inner, 0, SEEK_CUR);
    if (c->inner->is_streamed)
        c->logical_size = -1;
    else
        c->logical_size = FUNC5(c->inner, 0, AVSEEK_SIZE);

    c->io_error = 0;
fail:
    FUNC2(&inner_options);
    return ret;
}