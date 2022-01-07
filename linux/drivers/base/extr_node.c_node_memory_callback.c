
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;

__attribute__((used)) static inline int node_memory_callback(struct notifier_block *self,
    unsigned long action, void *arg)
{
 return NOTIFY_OK;
}
