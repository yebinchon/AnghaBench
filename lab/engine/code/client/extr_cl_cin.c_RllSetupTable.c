
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {short* sqrTable; } ;


 TYPE_1__ cin ;

__attribute__((used)) static void RllSetupTable( void )
{
 int z;

 for (z=0;z<128;z++) {
  cin.sqrTable[z] = (short)(z*z);
  cin.sqrTable[z+128] = (short)(-cin.sqrTable[z]);
 }
}
