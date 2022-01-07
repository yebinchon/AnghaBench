
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscore_ops {int node; } ;


 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int syscore_ops_list ;
 int syscore_ops_lock ;

void register_syscore_ops(struct syscore_ops *ops)
{
 mutex_lock(&syscore_ops_lock);
 list_add_tail(&ops->node, &syscore_ops_list);
 mutex_unlock(&syscore_ops_lock);
}
