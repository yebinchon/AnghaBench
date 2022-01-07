
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port_operations {struct ata_port_operations* inherits; } ;
typedef int DEFINE_SPINLOCK ;


 scalar_t__ IS_ERR (void*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ata_finalize_port_ops(struct ata_port_operations *ops)
{
 static DEFINE_SPINLOCK(lock);
 const struct ata_port_operations *cur;
 void **begin = (void **)ops;
 void **end = (void **)&ops->inherits;
 void **pp;

 if (!ops || !ops->inherits)
  return;

 spin_lock(&lock);

 for (cur = ops->inherits; cur; cur = cur->inherits) {
  void **inherit = (void **)cur;

  for (pp = begin; pp < end; pp++, inherit++)
   if (!*pp)
    *pp = *inherit;
 }

 for (pp = begin; pp < end; pp++)
  if (IS_ERR(*pp))
   *pp = ((void*)0);

 ops->inherits = ((void*)0);

 spin_unlock(&lock);
}
