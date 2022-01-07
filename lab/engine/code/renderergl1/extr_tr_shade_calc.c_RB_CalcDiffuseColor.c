
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ integer; } ;


 int RB_CalcDiffuseColor_altivec (unsigned char*) ;
 int RB_CalcDiffuseColor_scalar (unsigned char*) ;
 TYPE_1__* com_altivec ;

void RB_CalcDiffuseColor( unsigned char *colors )
{







 RB_CalcDiffuseColor_scalar( colors );
}
