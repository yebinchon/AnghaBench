
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ms_hyperv_tsc_page {int dummy; } ;


 struct ms_hyperv_tsc_page tsc_pg ;

struct ms_hyperv_tsc_page *hv_get_tsc_page(void)
{
 return &tsc_pg;
}
