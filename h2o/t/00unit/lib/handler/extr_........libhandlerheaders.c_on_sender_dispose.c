
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_headers_early_hints_sender_t {int deferred_timeout_entry; } ;


 scalar_t__ h2o_timer_is_linked (int *) ;
 int h2o_timer_unlink (int *) ;

__attribute__((used)) static void on_sender_dispose(void *_sender)
{
    struct st_headers_early_hints_sender_t *sender = (struct st_headers_early_hints_sender_t *)_sender;
    if (h2o_timer_is_linked(&sender->deferred_timeout_entry))
        h2o_timer_unlink(&sender->deferred_timeout_entry);
}
