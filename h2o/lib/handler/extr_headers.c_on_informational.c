
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct st_headers_filter_t {TYPE_3__* cmds; } ;
struct TYPE_6__ {int status; int headers; } ;
struct TYPE_7__ {TYPE_1__ res; int pool; } ;
typedef TYPE_2__ h2o_req_t ;
struct TYPE_8__ {scalar_t__ cmd; scalar_t__ when; } ;
typedef TYPE_3__ h2o_headers_command_t ;
typedef int h2o_filter_t ;


 scalar_t__ H2O_HEADERS_CMD_NULL ;
 scalar_t__ H2O_HEADERS_CMD_WHEN_FINAL ;
 int h2o_rewrite_headers (int *,int *,TYPE_3__*) ;

__attribute__((used)) static void on_informational(h2o_filter_t *_self, h2o_req_t *req)
{
    struct st_headers_filter_t *self = (void *)_self;
    h2o_headers_command_t *cmd;

    if (req->res.status != 103)
        return;

    for (cmd = self->cmds; cmd->cmd != H2O_HEADERS_CMD_NULL; ++cmd) {
        if (cmd->when != H2O_HEADERS_CMD_WHEN_FINAL)
            h2o_rewrite_headers(&req->pool, &req->res.headers, cmd);
    }
}
