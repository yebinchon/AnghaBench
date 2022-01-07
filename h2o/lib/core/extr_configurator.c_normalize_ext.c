
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* scalar; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef TYPE_2__ yoml_t ;
typedef int h2o_configurator_command_t ;


 scalar_t__ assert_is_extension (int *,TYPE_2__*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static const char *normalize_ext(h2o_configurator_command_t *cmd, yoml_t *node)
{
    if (strcmp(node->data.scalar, "default") == 0) {

        return "";
    } else if (assert_is_extension(cmd, node) == 0) {
        return node->data.scalar + 1;
    } else {
        return ((void*)0);
    }
}
