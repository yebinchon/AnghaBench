
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int redis; } ;
struct st_h2o_mruby_redis_client_t {int super; TYPE_1__ refs; } ;
typedef int mrb_state ;


 int h2o_redis_free (int *) ;
 int mrb_nil_value () ;

__attribute__((used)) static void on_gc_dispose_redis(mrb_state *mrb, void *_client)
{
    struct st_h2o_mruby_redis_client_t *client = _client;

    client->refs.redis = mrb_nil_value();
    h2o_redis_free(&client->super);
}
