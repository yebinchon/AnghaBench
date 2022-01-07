
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int PNV_OCXL_ACTAG_MAX ;

__attribute__((used)) static u16 assign_fn_actags(u16 desired, u16 total)
{
 u16 count;

 if (total <= PNV_OCXL_ACTAG_MAX)
  count = desired;
 else
  count = PNV_OCXL_ACTAG_MAX * desired / total;

 return count;
}
