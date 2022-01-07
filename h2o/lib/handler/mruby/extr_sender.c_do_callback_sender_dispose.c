
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct st_h2o_mruby_callback_sender_t {int receiving; int sending; } ;
struct TYPE_4__ {scalar_t__ sender; } ;
typedef TYPE_1__ h2o_mruby_generator_t ;


 int h2o_buffer_dispose (int *) ;
 int h2o_doublebuffer_dispose (int *) ;
 int h2o_mruby_sender_close_body (TYPE_1__*) ;

__attribute__((used)) static void do_callback_sender_dispose(h2o_mruby_generator_t *generator)
{
    struct st_h2o_mruby_callback_sender_t *sender = (void *)generator->sender;
    h2o_doublebuffer_dispose(&sender->sending);
    h2o_buffer_dispose(&sender->receiving);
    h2o_mruby_sender_close_body(generator);
}
