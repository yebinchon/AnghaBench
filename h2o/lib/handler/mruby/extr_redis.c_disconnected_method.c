
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; } ;
struct st_h2o_mruby_redis_client_t {TYPE_1__ super; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 struct st_h2o_mruby_redis_client_t* DATA_PTR (int ) ;
 scalar_t__ H2O_REDIS_CONNECTION_STATE_CLOSED ;
 int mrb_bool_value (int) ;

__attribute__((used)) static mrb_value disconnected_method(mrb_state *mrb, mrb_value self)
{
    struct st_h2o_mruby_redis_client_t *client = DATA_PTR(self);
    return mrb_bool_value(client->super.state == H2O_REDIS_CONNECTION_STATE_CLOSED);
}
