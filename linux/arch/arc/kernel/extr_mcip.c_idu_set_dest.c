
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_IDU_SET_DEST ;
 int __mcip_cmd_data (int ,unsigned int,unsigned int) ;

__attribute__((used)) static void idu_set_dest(unsigned int cmn_irq, unsigned int cpu_mask)
{
 __mcip_cmd_data(CMD_IDU_SET_DEST, cmn_irq, cpu_mask);
}
