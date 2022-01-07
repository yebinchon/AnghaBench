
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMO_PrPSP ;

__attribute__((used)) static inline int cmo_get_primary_psp(void)
{
 return CMO_PrPSP;
}
