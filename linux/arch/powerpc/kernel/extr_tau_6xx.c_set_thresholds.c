
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int high; int low; } ;


 int SPRN_THRM1 ;
 int SPRN_THRM2 ;
 int THRM1_THRES (int ) ;
 int THRM1_TID ;
 int THRM1_TIE ;
 int THRM1_V ;
 int mtspr (int ,int) ;
 TYPE_1__* tau ;

__attribute__((used)) static void set_thresholds(unsigned long cpu)
{
 mtspr(SPRN_THRM1, THRM1_THRES(tau[cpu].low) | THRM1_V | THRM1_TID);
 mtspr(SPRN_THRM2, THRM1_THRES(tau[cpu].high) | THRM1_V);

}
