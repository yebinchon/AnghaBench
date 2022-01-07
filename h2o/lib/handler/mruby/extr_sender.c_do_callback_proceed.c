
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int body_obj; int final_sent; } ;
struct st_h2o_mruby_callback_sender_t {int receiving; int sending; TYPE_1__ super; scalar_t__ has_error; } ;
typedef int h2o_req_t ;
struct TYPE_6__ {scalar_t__ sender; } ;
typedef TYPE_2__ h2o_mruby_generator_t ;
typedef int h2o_generator_t ;


 int H2O_SEND_STATE_ERROR ;
 int assert (int) ;
 int h2o_doublebuffer_consume (int *) ;
 int h2o_mruby_sender_do_send (TYPE_2__*,int *,int ,int ) ;
 int h2o_mruby_sender_do_send_buffer (TYPE_2__*,int *,int *,int) ;
 int mrb_nil_p (int ) ;

__attribute__((used)) static void do_callback_proceed(h2o_generator_t *_generator, h2o_req_t *req)
{
    h2o_mruby_generator_t *generator = (void *)_generator;
    struct st_h2o_mruby_callback_sender_t *sender = (void *)generator->sender;

    assert(!sender->super.final_sent);

    h2o_doublebuffer_consume(&sender->sending);

    if (sender->has_error) {
        h2o_mruby_sender_do_send(generator, ((void*)0), 0, H2O_SEND_STATE_ERROR);
    } else {
        int is_final = mrb_nil_p(sender->super.body_obj);
        h2o_mruby_sender_do_send_buffer(generator, &sender->sending, &sender->receiving, is_final);
    }
}
