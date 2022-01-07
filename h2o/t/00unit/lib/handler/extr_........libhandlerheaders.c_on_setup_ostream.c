
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct st_headers_filter_t {TYPE_3__* cmds; } ;
struct TYPE_7__ {int headers; } ;
struct TYPE_8__ {TYPE_1__ res; int pool; } ;
typedef TYPE_2__ h2o_req_t ;
typedef int h2o_ostream_t ;
struct TYPE_9__ {scalar_t__ cmd; scalar_t__ when; } ;
typedef TYPE_3__ h2o_headers_command_t ;
typedef int h2o_filter_t ;


 scalar_t__ H2O_HEADERS_CMD_NULL ;
 scalar_t__ H2O_HEADERS_CMD_WHEN_EARLY ;
 int h2o_rewrite_headers (int *,int *,TYPE_3__*) ;
 int h2o_setup_next_ostream (TYPE_2__*,int **) ;

__attribute__((used)) static void on_setup_ostream(h2o_filter_t *_self, h2o_req_t *req, h2o_ostream_t **slot)
{
    struct st_headers_filter_t *self = (void *)_self;
    h2o_headers_command_t *cmd;

    for (cmd = self->cmds; cmd->cmd != H2O_HEADERS_CMD_NULL; ++cmd) {
        if (cmd->when != H2O_HEADERS_CMD_WHEN_EARLY)
            h2o_rewrite_headers(&req->pool, &req->res.headers, cmd);
    }

    h2o_setup_next_ostream(req, slot);
}
