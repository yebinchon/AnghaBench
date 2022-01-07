
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiod_lookup_table {int dummy; } ;


 int gpiod_add_lookup_table (struct gpiod_lookup_table*) ;
 int platform_device_register_simple (char*,int,int *,int ) ;

void sa11x0_register_pcmcia(int socket, struct gpiod_lookup_table *table)
{
 if (table)
  gpiod_add_lookup_table(table);
 platform_device_register_simple("sa11x0-pcmcia", socket, ((void*)0), 0);
}
