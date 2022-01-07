
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int devdisr; } ;


 int CCSR_GUTS_DEVDISR_TB0 ;
 int CCSR_GUTS_DEVDISR_TB1 ;
 int clrbits32 (int *,int) ;
 TYPE_1__* guts ;
 int in_be32 (int *) ;
 int setbits32 (int *,int) ;

__attribute__((used)) static void mpc85xx_freeze_time_base(bool freeze)
{
 uint32_t mask;

 mask = CCSR_GUTS_DEVDISR_TB0 | CCSR_GUTS_DEVDISR_TB1;
 if (freeze)
  setbits32(&guts->devdisr, mask);
 else
  clrbits32(&guts->devdisr, mask);

 in_be32(&guts->devdisr);
}
