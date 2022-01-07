
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_node {int tmp_refs; } ;



__attribute__((used)) static void binder_inc_node_tmpref_ilocked(struct binder_node *node)
{





 node->tmp_refs++;
}
