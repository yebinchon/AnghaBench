
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_node {int dummy; } ;


 int BINDER_STAT_NODE ;
 int binder_stats_deleted (int ) ;
 int kfree (struct binder_node*) ;

__attribute__((used)) static void binder_free_node(struct binder_node *node)
{
 kfree(node);
 binder_stats_deleted(BINDER_STAT_NODE);
}
