
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float f; int i; } ;
typedef TYPE_1__ floatint_t ;


 int BOTLIB_AI_CHARACTERISTIC_BFLOAT ;
 int PASSFLOAT (float) ;
 int syscall (int ,int,int,int ,int ) ;

float trap_Characteristic_BFloat(int character, int index, float min, float max) {
 floatint_t fi;
 fi.i = syscall( BOTLIB_AI_CHARACTERISTIC_BFLOAT, character, index, PASSFLOAT(min), PASSFLOAT(max) );
 return fi.f;
}
