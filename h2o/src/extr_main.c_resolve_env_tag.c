
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * scalar; } ;
struct TYPE_7__ {scalar_t__ type; int _refcnt; TYPE_1__ data; int * tag; } ;
typedef TYPE_2__ yoml_t ;
typedef int resolve_tag_arg_t ;
struct TYPE_8__ {int * base; } ;


 int SIZE_MAX ;
 scalar_t__ YOML_TYPE_SCALAR ;
 int fprintf (int ,char*) ;
 int free (int *) ;
 char* getenv (int *) ;
 TYPE_5__ h2o_strdup (int *,char const*,int ) ;
 int stderr ;

__attribute__((used)) static yoml_t *resolve_env_tag(yoml_t *node, resolve_tag_arg_t *arg)
{
    if (node->type != YOML_TYPE_SCALAR) {
        fprintf(stderr, "value of !env must be a scalar");
        return ((void*)0);
    }

    const char *value;
    if ((value = getenv(node->data.scalar)) == ((void*)0))
        value = "";



    free(node->data.scalar);
    free(node->tag);
    node->tag = ((void*)0);

    node->data.scalar = h2o_strdup(((void*)0), value, SIZE_MAX).base;
    ++node->_refcnt;

    return node;
}
