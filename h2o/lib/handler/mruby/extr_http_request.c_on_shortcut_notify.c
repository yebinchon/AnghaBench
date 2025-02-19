
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int inflight; } ;
struct TYPE_11__ {scalar_t__ bytes_left; int final_sent; } ;
struct st_h2o_mruby_http_sender_t {TYPE_8__ sending; TYPE_1__ super; TYPE_5__* client; TYPE_3__* remaining; } ;
struct TYPE_12__ {scalar_t__ sender; } ;
typedef TYPE_2__ h2o_mruby_generator_t ;
struct TYPE_13__ {scalar_t__ size; } ;
typedef TYPE_3__ h2o_buffer_t ;
struct TYPE_14__ {TYPE_2__* shortcut; } ;


 scalar_t__ SIZE_MAX ;
 int assert (int) ;
 int h2o_buffer_init (TYPE_3__**,int *) ;
 int h2o_mruby_sender_do_send_buffer (TYPE_2__*,TYPE_8__*,TYPE_3__**,int) ;
 int h2o_socket_buffer_prototype ;
 TYPE_3__** peek_content (TYPE_5__*,int*) ;

__attribute__((used)) static void on_shortcut_notify(h2o_mruby_generator_t *generator)
{
    struct st_h2o_mruby_http_sender_t *sender = (void *)generator->sender;
    assert(sender->client->shortcut == generator);

    int is_final;
    h2o_buffer_t **input = peek_content(sender->client, &is_final);

    if (sender->super.bytes_left != SIZE_MAX && sender->super.bytes_left < (*input)->size)
        (*input)->size = sender->super.bytes_left;


    if (is_final) {
        sender->remaining = *input;
        h2o_buffer_init(input, &h2o_socket_buffer_prototype);
        input = &sender->remaining;
        sender->client->shortcut = ((void*)0);
        sender->client = ((void*)0);
    }

    if (!sender->super.final_sent && !sender->sending.inflight)
        h2o_mruby_sender_do_send_buffer(generator, &sender->sending, input, is_final);
}
