
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT (int) ;
 int HPCR ;
 int cpwcr (int ,int) ;

__attribute__((used)) static void csky_pmu_reset(void *info)
{
 cpwcr(HPCR, BIT(31) | BIT(30) | BIT(1));
}
