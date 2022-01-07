
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int * scalar; } ;
struct TYPE_19__ {int type; TYPE_1__ data; } ;
typedef TYPE_2__ yoml_t ;
struct st_h2o_access_log_configurator_t {TYPE_8__* handles; } ;
struct TYPE_20__ {int dry_run; } ;
typedef TYPE_3__ h2o_configurator_context_t ;
struct TYPE_21__ {scalar_t__ configurator; } ;
typedef TYPE_4__ h2o_configurator_command_t ;
typedef int h2o_access_log_filehandle_t ;
struct TYPE_22__ {scalar_t__ size; int ** entries; } ;


 int H2O_LOGCONF_ESCAPE_APACHE ;
 int H2O_LOGCONF_ESCAPE_JSON ;


 int * h2o_access_log_open_handle (int *,int *,int) ;
 int h2o_configurator_errprintf (TYPE_4__*,TYPE_2__*,char*) ;
 int h2o_configurator_get_one_of (TYPE_4__*,TYPE_2__*,char*) ;
 int h2o_configurator_parse_mapping (TYPE_4__*,TYPE_2__*,char*,char*,TYPE_2__***,TYPE_2__***,TYPE_2__***) ;
 int h2o_vector_reserve (int *,TYPE_8__*,scalar_t__) ;

__attribute__((used)) static int on_config(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct st_h2o_access_log_configurator_t *self = (void *)cmd->configurator;
    yoml_t **path, **format = ((void*)0), **escape_node = ((void*)0);
    int escape = H2O_LOGCONF_ESCAPE_APACHE;
    h2o_access_log_filehandle_t *fh;

    switch (node->type) {
    case 128:
        path = &node;
        break;
    case 129:
        if (h2o_configurator_parse_mapping(cmd, node, "path:s", "format:s,escape:*", &path, &format, &escape_node) != 0)
            return -1;
        break;
    default:
        h2o_configurator_errprintf(cmd, node, "node must be a scalar or a mapping");
        return -1;
    }

    if (escape_node != ((void*)0)) {
        switch (h2o_configurator_get_one_of(cmd, *escape_node, "apache,json")) {
        case 0:
            escape = H2O_LOGCONF_ESCAPE_APACHE;
            break;
        case 1:
            escape = H2O_LOGCONF_ESCAPE_JSON;
            break;
        default:
            return -1;
        }
    }

    if (!ctx->dry_run) {
        if ((fh = h2o_access_log_open_handle((*path)->data.scalar, format != ((void*)0) ? (*format)->data.scalar : ((void*)0), escape)) == ((void*)0))
            return -1;
        h2o_vector_reserve(((void*)0), self->handles, self->handles->size + 1);
        self->handles->entries[self->handles->size++] = fh;
    }

    return 0;
}
