
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_mruby_redis_client_t {int super; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 struct st_h2o_mruby_redis_client_t* DATA_PTR (int ) ;
 int h2o_redis_disconnect (int *) ;

__attribute__((used)) static mrb_value disconnect_method(mrb_state *mrb, mrb_value self)
{
    struct st_h2o_mruby_redis_client_t *client = DATA_PTR(self);
    h2o_redis_disconnect(&client->super);
    return self;
}
