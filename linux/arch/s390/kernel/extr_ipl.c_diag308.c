
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_KASAN ;
 int DIAG_STAT_X308 ;
 scalar_t__ IS_ENABLED (int ) ;
 int __arch_local_irq_stosm (int) ;
 int __diag308 (unsigned long,void*) ;
 int diag_stat_inc (int ) ;

int diag308(unsigned long subcode, void *addr)
{
 if (IS_ENABLED(CONFIG_KASAN))
  __arch_local_irq_stosm(0x04);
 diag_stat_inc(DIAG_STAT_X308);
 return __diag308(subcode, addr);
}
