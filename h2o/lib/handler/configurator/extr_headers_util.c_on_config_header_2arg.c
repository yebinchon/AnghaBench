
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int scalar; } ;
struct TYPE_15__ {TYPE_1__ data; } ;
typedef TYPE_2__ yoml_t ;
struct TYPE_16__ {int base; } ;
typedef TYPE_3__ h2o_iovec_t ;
typedef int h2o_headers_command_when_t ;
typedef int h2o_headers_command_t ;
typedef int h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;


 scalar_t__ add_cmd (int *,TYPE_2__*,int,TYPE_3__*,TYPE_3__,int ,int **) ;
 scalar_t__ extract_name_value (int ,TYPE_3__**,TYPE_3__*) ;
 int free (int ) ;
 int h2o_configurator_errprintf (int *,TYPE_2__*,char*) ;
 int h2o_iovec_is_token (TYPE_3__*) ;
 scalar_t__ parse_header_node (int *,TYPE_2__**,TYPE_2__***,size_t*,int *) ;

__attribute__((used)) static int on_config_header_2arg(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, int cmd_id, yoml_t *node,
                                 h2o_headers_command_t **headers_cmds)
{
    h2o_iovec_t *name, value;
    yoml_t **headers;
    size_t num_headers;
    h2o_headers_command_when_t when;

    if (parse_header_node(cmd, &node, &headers, &num_headers, &when) != 0)
        return -1;

    int i;
    for (i = 0; i != num_headers; ++i) {
        yoml_t *header = headers[i];
        if (extract_name_value(header->data.scalar, &name, &value) != 0) {
            h2o_configurator_errprintf(cmd, header, "failed to parse the value; should be in form of `name: value`");
            return -1;
        }
        if (add_cmd(cmd, header, cmd_id, name, value, when, headers_cmds) != 0) {
            if (!h2o_iovec_is_token(name))
                free(name->base);
            free(value.base);
            return -1;
        }
    }

    return 0;
}
