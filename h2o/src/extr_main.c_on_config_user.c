
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int scalar; } ;
struct TYPE_11__ {TYPE_1__ data; } ;
typedef TYPE_3__ yoml_t ;
struct TYPE_12__ {TYPE_2__* globalconf; } ;
typedef TYPE_4__ h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;
struct TYPE_13__ {int base; } ;
struct TYPE_10__ {int user; } ;


 int SIZE_MAX ;
 scalar_t__ errno ;
 int * getpwnam (int ) ;
 int h2o_configurator_errprintf (int *,TYPE_3__*,char*,int ) ;
 TYPE_7__ h2o_strdup (int *,int ,int ) ;
 int perror (char*) ;

__attribute__((used)) static int on_config_user(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    errno = 0;
    if (getpwnam(node->data.scalar) == ((void*)0)) {
        if (errno == 0) {
            h2o_configurator_errprintf(cmd, node, "user:%s does not exist", node->data.scalar);
        } else {
            perror("getpwnam");
        }
        return -1;
    }
    ctx->globalconf->user = h2o_strdup(((void*)0), node->data.scalar, SIZE_MAX).base;
    return 0;
}
