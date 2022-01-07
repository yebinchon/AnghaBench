
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_node {int dummy; } ;


 int binder_dec_node_tmpref (struct binder_node*) ;

__attribute__((used)) static void binder_put_node(struct binder_node *node)
{
 binder_dec_node_tmpref(node);
}
