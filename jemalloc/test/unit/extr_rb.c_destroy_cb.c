
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node_t ;


 int assert_u_gt (unsigned int,int ,char*) ;

__attribute__((used)) static void
destroy_cb(node_t *node, void *data) {
 unsigned *nnodes = (unsigned *)data;

 assert_u_gt(*nnodes, 0, "Destruction removed too many nodes");
 (*nnodes)--;
}
