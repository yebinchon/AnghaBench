
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int still_is_active; int bail_out; } ;
typedef TYPE_1__ node_t ;
typedef int h2o_http2_scheduler_openref_t ;


 scalar_t__ max_cnt ;
 char* output ;
 int strcat (char*,char*) ;

__attribute__((used)) static int iterate_cb(h2o_http2_scheduler_openref_t *ref, int *still_is_active, void *_unused)
{
    node_t *node = (void *)ref;

    if (output[0] != '\0')
        strcat(output, ",");
    strcat(output, node->name);
    *still_is_active = node->still_is_active;

    if (--max_cnt == 0)
        return 1;
    return node->bail_out;
}
