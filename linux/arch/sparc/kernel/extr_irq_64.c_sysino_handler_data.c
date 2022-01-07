
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_handler_data {unsigned long sysino; } ;


 unsigned long sun4v_devino_to_sysino (int ,unsigned int) ;

__attribute__((used)) static void sysino_handler_data(struct irq_handler_data *data,
    u32 devhandle, unsigned int devino)
{
 unsigned long sysino;

 sysino = sun4v_devino_to_sysino(devhandle, devino);
 data->sysino = sysino;
}
