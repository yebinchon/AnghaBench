
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yoml_t ;
typedef int h2o_token_t ;
typedef int h2o_iovec_t ;
typedef int h2o_headers_command_when_t ;
typedef int h2o_headers_command_t ;
typedef int h2o_configurator_command_t ;


 int h2o_configurator_errprintf (int *,int *,char*) ;
 int h2o_headers_append_command (int **,int,int *,int ,int ) ;
 scalar_t__ h2o_headers_is_prohibited_name (int const*) ;
 scalar_t__ h2o_iovec_is_token (int *) ;

__attribute__((used)) static int add_cmd(h2o_configurator_command_t *cmd, yoml_t *node, int cmd_id, h2o_iovec_t *name, h2o_iovec_t value,
                   h2o_headers_command_when_t when, h2o_headers_command_t **cmds)
{
    if (h2o_iovec_is_token(name)) {
        const h2o_token_t *token = (void *)name;
        if (h2o_headers_is_prohibited_name(token)) {
            h2o_configurator_errprintf(cmd, node, "the named header cannot be rewritten");
            return -1;
        }
    }

    h2o_headers_append_command(cmds, cmd_id, name, value, when);
    return 0;
}
