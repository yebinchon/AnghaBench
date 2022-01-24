#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  command; } ;
struct st_h2o_mruby_redis_command_context_t {TYPE_4__ refs; TYPE_3__* client; } ;
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  redisReply ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_7__ {TYPE_2__* ctx; } ;
struct TYPE_6__ {TYPE_1__* shared; } ;
struct TYPE_5__ {int /*<<< orphan*/ * mrb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char const* h2o_redis_error_command_timeout ; 
 char const* h2o_redis_error_connect_timeout ; 
 char const* h2o_redis_error_connection ; 
 char const* h2o_redis_error_protocol ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct RClass*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct st_h2o_mruby_redis_command_context_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static void FUNC9(redisReply *_reply, void *_ctx, const char *errstr)
{
    struct st_h2o_mruby_redis_command_context_t *ctx = _ctx;
    mrb_state *mrb = ctx->client->ctx->shared->mrb;
    mrb_value reply = FUNC6();

    int gc_arena = FUNC4(mrb);

    if (errstr == NULL) {
        if (_reply == NULL)
            return;
        reply = FUNC0(mrb, _reply, ctx->refs.command);
    } else {
        struct RClass *error_klass = NULL;

        if (errstr == h2o_redis_error_connection) {
            error_klass = FUNC1(mrb, "ConnectionError");
        } else if (errstr == h2o_redis_error_protocol) {
            error_klass = FUNC1(mrb, "ProtocolError");
        } else if (errstr == h2o_redis_error_connect_timeout) {
            error_klass = FUNC1(mrb, "ConnectTimeoutError");
        } else if (errstr == h2o_redis_error_command_timeout) {
            error_klass = FUNC1(mrb, "CommandTimeoutError");
        } else {
            error_klass = FUNC1(mrb, "UnknownError");
        }

        reply = FUNC2(mrb, error_klass, errstr, FUNC8(errstr));
    }

    FUNC7(ctx, reply);

    FUNC3(mrb, gc_arena);
    FUNC5(mrb, ctx->refs.command);
}