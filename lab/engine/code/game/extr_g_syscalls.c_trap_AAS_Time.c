
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float f; int i; } ;
typedef TYPE_1__ floatint_t ;


 int BOTLIB_AAS_TIME ;
 int syscall (int ) ;

float trap_AAS_Time(void) {
 floatint_t fi;
 fi.i = syscall( BOTLIB_AAS_TIME );
 return fi.f;
}
