#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {scalar_t__ state; } ;
struct st_h2o_mruby_redis_client_t {TYPE_1__ super; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 struct st_h2o_mruby_redis_client_t* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ H2O_REDIS_CONNECTION_STATE_CLOSED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static mrb_value FUNC6(mrb_state *mrb, mrb_value self)
{
    struct st_h2o_mruby_redis_client_t *client = FUNC0(self);
    if (client->super.state != H2O_REDIS_CONNECTION_STATE_CLOSED)
        return self;

    mrb_value _host = FUNC4(mrb, self, FUNC3(mrb, "@host"));
    mrb_value _port = FUNC4(mrb, self, FUNC3(mrb, "@port"));
    const char *host = FUNC5(mrb, &_host);
    uint16_t port = FUNC2(_port);

    FUNC1(&client->super, host, port);

    return self;
}