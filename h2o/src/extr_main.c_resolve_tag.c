
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int _refcnt; } ;
typedef TYPE_1__ yoml_t ;
typedef int resolve_tag_arg_t ;


 TYPE_1__* resolve_env_tag (TYPE_1__*,int *) ;
 TYPE_1__* resolve_file_tag (TYPE_1__*,int *) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static yoml_t *resolve_tag(const char *tag, yoml_t *node, void *cb_arg)
{
    resolve_tag_arg_t *arg = (resolve_tag_arg_t *)cb_arg;

    if (strcmp(tag, "!file") == 0) {
        return resolve_file_tag(node, arg);
    }

    if (strcmp(tag, "!env") == 0) {
        return resolve_env_tag(node, arg);
    }


    ++node->_refcnt;
    return node;
}
