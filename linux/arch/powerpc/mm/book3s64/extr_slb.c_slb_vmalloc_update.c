
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int slb_flush_and_restore_bolted () ;

void slb_vmalloc_update(void)
{



 slb_flush_and_restore_bolted();
}
