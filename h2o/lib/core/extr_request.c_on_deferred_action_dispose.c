
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_deferred_request_action_t {int timeout; } ;


 int h2o_timer_unlink (int *) ;

__attribute__((used)) static void on_deferred_action_dispose(void *_action)
{
    struct st_deferred_request_action_t *action = _action;
    h2o_timer_unlink(&action->timeout);
}
