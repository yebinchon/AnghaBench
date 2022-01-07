
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_handler_data {unsigned int dev_ino; int dev_handle; } ;



__attribute__((used)) static void cookie_handler_data(struct irq_handler_data *data,
    u32 devhandle, unsigned int devino)
{
 data->dev_handle = devhandle;
 data->dev_ino = devino;
}
