
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 int __imr_remove_range (int,int ,size_t) ;

int imr_remove_range(phys_addr_t base, size_t size)
{
 return __imr_remove_range(-1, base, size);
}
