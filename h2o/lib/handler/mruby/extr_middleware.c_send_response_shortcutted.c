
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;


struct TYPE_20__ {int size; TYPE_9__* entries; } ;
struct TYPE_21__ {TYPE_2__ headers; int mime_attr; int content_length; int reason; int status; } ;
struct TYPE_22__ {TYPE_3__ res; } ;
struct TYPE_19__ {TYPE_8__* response; } ;
struct st_mruby_subreq_t {TYPE_4__ super; TYPE_1__ shortcut; } ;
struct TYPE_25__ {int (* start ) (TYPE_8__*) ;int proceed; } ;
typedef TYPE_7__ h2o_mruby_sender_t ;
struct TYPE_18__ {int proceed; } ;
struct TYPE_26__ {TYPE_7__* sender; TYPE_12__ super; TYPE_11__* req; TYPE_5__* ctx; } ;
typedef TYPE_8__ h2o_mruby_generator_t ;
struct TYPE_27__ {int value; int name; } ;
typedef TYPE_9__ h2o_header_t ;
struct TYPE_24__ {int headers; int mime_attr; int content_length; int reason; int status; } ;
struct TYPE_23__ {int shared; } ;
struct TYPE_17__ {TYPE_6__ res; } ;


 int H2O_TOKEN_DATE ;
 int assert (int ) ;
 TYPE_7__* create_sender (TYPE_8__*,struct st_mruby_subreq_t*,int ) ;
 int h2o_find_header (int *,int ,int) ;
 int h2o_mruby_set_response_header (int ,int ,int ,TYPE_11__*) ;
 int h2o_resp_add_date_header (TYPE_11__*) ;
 int h2o_start_response (TYPE_11__*,TYPE_12__*) ;
 int mrb_nil_value () ;
 int stub1 (TYPE_8__*) ;

__attribute__((used)) static void send_response_shortcutted(struct st_mruby_subreq_t *subreq)
{
    h2o_mruby_generator_t *generator = subreq->shortcut.response;
    assert(generator != ((void*)0));


    generator->req->res.status = subreq->super.res.status;
    generator->req->res.reason = subreq->super.res.reason;
    generator->req->res.content_length = subreq->super.res.content_length;
    generator->req->res.mime_attr = subreq->super.res.mime_attr;


    int i;
    for (i = 0; i != subreq->super.res.headers.size; ++i) {
        h2o_header_t *header = subreq->super.res.headers.entries + i;
        h2o_mruby_set_response_header(generator->ctx->shared, header->name, header->value, generator->req);
    }

    if (h2o_find_header(&generator->req->res.headers, H2O_TOKEN_DATE, -1) == -1)
        h2o_resp_add_date_header(generator->req);


    h2o_mruby_sender_t *sender = create_sender(generator, subreq, mrb_nil_value());
    generator->sender = sender;
    generator->super.proceed = sender->proceed;


    h2o_start_response(generator->req, &generator->super);
    generator->sender->start(generator);
}
