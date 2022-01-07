
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __irq_alloc_descs (int,int,int,int ,int *,int *) ;
 int numa_node_id () ;

unsigned int irq_alloc(unsigned int dev_handle, unsigned int dev_ino)
{
 int irq;

 irq = __irq_alloc_descs(-1, 1, 1, numa_node_id(), ((void*)0), ((void*)0));
 if (irq <= 0)
  goto out;

 return irq;
out:
 return 0;
}
