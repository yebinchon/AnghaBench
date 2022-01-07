
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt305x_esw {int dummy; } ;


 unsigned int RT305X_ESW_PVIDC_PVID_M ;
 unsigned int RT305X_ESW_PVIDC_PVID_S ;
 int RT305X_ESW_REG_PVIDC (unsigned int) ;
 unsigned int esw_r32 (struct rt305x_esw*,int ) ;

__attribute__((used)) static unsigned esw_get_pvid(struct rt305x_esw *esw, unsigned port)
{
 unsigned s, val;

 s = RT305X_ESW_PVIDC_PVID_S * (port % 2);
 val = esw_r32(esw, RT305X_ESW_REG_PVIDC(port / 2));
 return (val >> s) & RT305X_ESW_PVIDC_PVID_M;
}
