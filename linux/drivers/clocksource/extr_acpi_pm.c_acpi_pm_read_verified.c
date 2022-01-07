
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ read_pmtmr () ;
 scalar_t__ unlikely (int) ;

u32 acpi_pm_read_verified(void)
{
 u32 v1 = 0, v2 = 0, v3 = 0;







 do {
  v1 = read_pmtmr();
  v2 = read_pmtmr();
  v3 = read_pmtmr();
 } while (unlikely((v1 > v2 && v1 < v3) || (v2 > v3 && v2 < v1)
     || (v3 > v1 && v3 < v2)));

 return v2;
}
