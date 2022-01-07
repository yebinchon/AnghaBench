
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int EGPIO_MAGICIAN_CABLE_INSERTED ;
 int EGPIO_MAGICIAN_CABLE_TYPE ;
 int gpio_free (int ) ;

__attribute__((used)) static void magician_supply_exit(struct device *dev)
{
 gpio_free(EGPIO_MAGICIAN_CABLE_INSERTED);
 gpio_free(EGPIO_MAGICIAN_CABLE_TYPE);
}
