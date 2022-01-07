
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_http2_scheduler_node_t ;


 int init_node (int *,int *) ;

void h2o_http2_scheduler_init(h2o_http2_scheduler_node_t *root)
{
    init_node(root, ((void*)0));
}
