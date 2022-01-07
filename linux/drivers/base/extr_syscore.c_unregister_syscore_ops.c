
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscore_ops {int node; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int syscore_ops_lock ;

void unregister_syscore_ops(struct syscore_ops *ops)
{
 mutex_lock(&syscore_ops_lock);
 list_del(&ops->node);
 mutex_unlock(&syscore_ops_lock);
}
