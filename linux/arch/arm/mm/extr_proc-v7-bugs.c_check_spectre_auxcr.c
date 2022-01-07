
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CONFIG_HARDEN_BRANCH_PREDICTOR ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ cpu_v7_check_auxcr_set (int*,int ,char*) ;

__attribute__((used)) static bool check_spectre_auxcr(bool *warned, u32 bit)
{
 return IS_ENABLED(CONFIG_HARDEN_BRANCH_PREDICTOR) &&
  cpu_v7_check_auxcr_set(warned, bit,
           "Spectre v2: firmware did not set auxiliary control register IBE bit, system vulnerable\n");
}
