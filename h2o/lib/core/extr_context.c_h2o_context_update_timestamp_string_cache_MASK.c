#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  h2o_timestamp_string_t ;
struct TYPE_7__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_8__ {TYPE_1__ tv_at; TYPE_4__* value; } ;
struct TYPE_9__ {TYPE_2__ _timestamp_cache; } ;
typedef  TYPE_3__ h2o_context_t ;
struct TYPE_10__ {int /*<<< orphan*/  log; int /*<<< orphan*/  rfc1123; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct tm*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct tm*) ; 

void FUNC5(h2o_context_t *ctx)
{
    struct tm gmt;
    if (ctx->_timestamp_cache.value != NULL)
        FUNC2(ctx->_timestamp_cache.value);
    ctx->_timestamp_cache.value = FUNC1(NULL, sizeof(h2o_timestamp_string_t), NULL);
    FUNC0(&ctx->_timestamp_cache.tv_at.tv_sec, &gmt);
    FUNC4(ctx->_timestamp_cache.value->rfc1123, &gmt);
    FUNC3(ctx->_timestamp_cache.value->log, ctx->_timestamp_cache.tv_at.tv_sec);
}