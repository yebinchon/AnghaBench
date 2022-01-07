
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st_h2o_mruby_http_sender_t {TYPE_1__* client; int * remaining; int sending; } ;
struct TYPE_6__ {scalar_t__ sender; } ;
typedef TYPE_2__ h2o_mruby_generator_t ;
struct TYPE_5__ {TYPE_2__* shortcut; } ;


 int assert (int) ;
 int h2o_buffer_dispose (int **) ;
 int h2o_doublebuffer_dispose (int *) ;
 int h2o_mruby_sender_close_body (TYPE_2__*) ;

__attribute__((used)) static void do_sender_dispose(h2o_mruby_generator_t *generator)
{
    struct st_h2o_mruby_http_sender_t *sender = (void *)generator->sender;

    h2o_doublebuffer_dispose(&sender->sending);


    if (sender->remaining != ((void*)0))
        h2o_buffer_dispose(&sender->remaining);

    if (sender->client != ((void*)0)) {
        assert(sender->client->shortcut == generator);
        sender->client->shortcut = ((void*)0);
    }

    h2o_mruby_sender_close_body(generator);
}
