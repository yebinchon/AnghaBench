
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {scalar_t__ state; } ;
struct st_h2o_mruby_redis_client_t {TYPE_1__ super; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 struct st_h2o_mruby_redis_client_t* DATA_PTR (int ) ;
 scalar_t__ H2O_REDIS_CONNECTION_STATE_CLOSED ;
 int h2o_redis_connect (TYPE_1__*,char const*,int ) ;
 int mrb_fixnum (int ) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_iv_get (int *,int ,int ) ;
 char* mrb_string_value_cstr (int *,int *) ;

__attribute__((used)) static mrb_value connect_method(mrb_state *mrb, mrb_value self)
{
    struct st_h2o_mruby_redis_client_t *client = DATA_PTR(self);
    if (client->super.state != H2O_REDIS_CONNECTION_STATE_CLOSED)
        return self;

    mrb_value _host = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "@host"));
    mrb_value _port = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "@port"));
    const char *host = mrb_string_value_cstr(mrb, &_host);
    uint16_t port = mrb_fixnum(_port);

    h2o_redis_connect(&client->super, host, port);

    return self;
}
