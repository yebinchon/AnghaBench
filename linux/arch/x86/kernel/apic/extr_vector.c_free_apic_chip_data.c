
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apic_chip_data {int dummy; } ;


 int kfree (struct apic_chip_data*) ;

__attribute__((used)) static void free_apic_chip_data(struct apic_chip_data *apicd)
{
 kfree(apicd);
}
