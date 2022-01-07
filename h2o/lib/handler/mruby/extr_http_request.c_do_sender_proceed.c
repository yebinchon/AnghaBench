
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int inflight; } ;
struct TYPE_6__ {int final_sent; } ;
struct st_h2o_mruby_http_sender_t {TYPE_4__ sending; TYPE_1__ super; int * remaining; int * client; } ;
typedef int h2o_req_t ;
struct TYPE_7__ {scalar_t__ sender; } ;
typedef TYPE_2__ h2o_mruby_generator_t ;
typedef int h2o_generator_t ;
typedef int h2o_buffer_t ;


 int assert (int) ;
 int h2o_doublebuffer_consume (TYPE_4__*) ;
 int h2o_mruby_sender_do_send_buffer (TYPE_2__*,TYPE_4__*,int **,int) ;
 int ** peek_content (int *,int*) ;

__attribute__((used)) static void do_sender_proceed(h2o_generator_t *_generator, h2o_req_t *req)
{
    h2o_mruby_generator_t *generator = (void *)_generator;
    struct st_h2o_mruby_http_sender_t *sender = (void *)generator->sender;
    h2o_buffer_t **input;
    int is_final;

    h2o_doublebuffer_consume(&sender->sending);

    if (sender->client != ((void*)0)) {
        input = peek_content(sender->client, &is_final);
        assert(!is_final);
    } else {
        input = &sender->remaining;
        is_final = 1;
    }

    if (!sender->super.final_sent && !sender->sending.inflight)
        h2o_mruby_sender_do_send_buffer(generator, &sender->sending, input, is_final);
}
