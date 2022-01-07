
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int command; } ;
struct st_h2o_mruby_redis_command_context_t {TYPE_4__ refs; TYPE_3__* client; } ;
struct RClass {int dummy; } ;
typedef int redisReply ;
typedef int mrb_value ;
typedef int mrb_state ;
struct TYPE_7__ {TYPE_2__* ctx; } ;
struct TYPE_6__ {TYPE_1__* shared; } ;
struct TYPE_5__ {int * mrb; } ;


 int decode_redis_reply (int *,int *,int ) ;
 struct RClass* get_error_class (int *,char*) ;
 char const* h2o_redis_error_command_timeout ;
 char const* h2o_redis_error_connect_timeout ;
 char const* h2o_redis_error_connection ;
 char const* h2o_redis_error_protocol ;
 int mrb_exc_new (int *,struct RClass*,char const*,int ) ;
 int mrb_gc_arena_restore (int *,int) ;
 int mrb_gc_arena_save (int *) ;
 int mrb_gc_unregister (int *,int ) ;
 int mrb_nil_value () ;
 int pass_reply (struct st_h2o_mruby_redis_command_context_t*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void on_redis_command(redisReply *_reply, void *_ctx, const char *errstr)
{
    struct st_h2o_mruby_redis_command_context_t *ctx = _ctx;
    mrb_state *mrb = ctx->client->ctx->shared->mrb;
    mrb_value reply = mrb_nil_value();

    int gc_arena = mrb_gc_arena_save(mrb);

    if (errstr == ((void*)0)) {
        if (_reply == ((void*)0))
            return;
        reply = decode_redis_reply(mrb, _reply, ctx->refs.command);
    } else {
        struct RClass *error_klass = ((void*)0);

        if (errstr == h2o_redis_error_connection) {
            error_klass = get_error_class(mrb, "ConnectionError");
        } else if (errstr == h2o_redis_error_protocol) {
            error_klass = get_error_class(mrb, "ProtocolError");
        } else if (errstr == h2o_redis_error_connect_timeout) {
            error_klass = get_error_class(mrb, "ConnectTimeoutError");
        } else if (errstr == h2o_redis_error_command_timeout) {
            error_klass = get_error_class(mrb, "CommandTimeoutError");
        } else {
            error_klass = get_error_class(mrb, "UnknownError");
        }

        reply = mrb_exc_new(mrb, error_klass, errstr, strlen(errstr));
    }

    pass_reply(ctx, reply);

    mrb_gc_arena_restore(mrb, gc_arena);
    mrb_gc_unregister(mrb, ctx->refs.command);
}
