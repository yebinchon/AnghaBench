
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int mrb_value ;
typedef int mrb_state ;
struct TYPE_17__ {int data; int (* cb ) (int ,TYPE_9__,TYPE_9__) ;} ;
struct TYPE_22__ {TYPE_2__ error_log_delegate; } ;
typedef TYPE_7__ h2o_req_t ;
struct TYPE_23__ {TYPE_6__* ctx; TYPE_1__* generator; } ;
typedef TYPE_8__ h2o_mruby_error_stream_t ;
struct TYPE_24__ {int len; } ;
typedef TYPE_9__ h2o_iovec_t ;
struct TYPE_21__ {TYPE_5__* handler; } ;
struct TYPE_20__ {TYPE_4__* pathconf; } ;
struct TYPE_18__ {scalar_t__ emit_request_errors; } ;
struct TYPE_19__ {TYPE_3__ error_log; } ;
struct TYPE_16__ {TYPE_7__* req; } ;


 int E_ARGUMENT_ERROR ;
 int RSTRING_LEN (int ) ;
 int * RSTRING_PTR (int ) ;
 TYPE_9__ h2o_iovec_init (int *,int ) ;
 TYPE_8__* h2o_mruby_get_error_stream (int *,int ) ;
 int h2o_mruby_to_str (int *,int ) ;
 int h2o_write_error_log (TYPE_9__,TYPE_9__) ;
 int mrb_fixnum_value (int ) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_raise (int *,int ,char*) ;
 int stub1 (int ,TYPE_9__,TYPE_9__) ;

__attribute__((used)) static mrb_value error_stream_write(mrb_state *mrb, mrb_value self)
{
    h2o_mruby_error_stream_t *error_stream;
    if ((error_stream = h2o_mruby_get_error_stream(mrb, self)) == ((void*)0)) {
        mrb_raise(mrb, E_ARGUMENT_ERROR, "ErrorStream#write wrong self");
    }

    mrb_value msgstr;
    mrb_get_args(mrb, "o", &msgstr);
    msgstr = h2o_mruby_to_str(mrb, msgstr);

    h2o_iovec_t msg = h2o_iovec_init(RSTRING_PTR(msgstr), RSTRING_LEN(msgstr));

    if (error_stream->generator != ((void*)0)) {
        h2o_req_t *req = error_stream->generator->req;
        req->error_log_delegate.cb(req->error_log_delegate.data, h2o_iovec_init(((void*)0), 0), msg);
    } else if (error_stream->ctx->handler->pathconf->error_log.emit_request_errors) {
        h2o_write_error_log(h2o_iovec_init(((void*)0), 0), msg);
    }

    return mrb_fixnum_value(msg.len);
}
