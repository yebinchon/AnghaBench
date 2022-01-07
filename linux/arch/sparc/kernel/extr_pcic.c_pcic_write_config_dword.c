
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct linux_pcic {scalar_t__ pcic_config_space_data; scalar_t__ pcic_config_space_addr; } ;


 int CONFIG_CMD (unsigned int,unsigned int,int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct linux_pcic pcic0 ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int pcic_write_config_dword(unsigned int busno, unsigned int devfn,
    int where, u32 value)
{
 struct linux_pcic *pcic;
 unsigned long flags;

 pcic = &pcic0;

 local_irq_save(flags);
 writel(CONFIG_CMD(busno, devfn, where), pcic->pcic_config_space_addr);
 writel(value, pcic->pcic_config_space_data + (where&4));
 local_irq_restore(flags);
 return 0;
}
