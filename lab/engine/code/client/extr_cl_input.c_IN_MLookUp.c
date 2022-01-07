
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int integer; } ;


 int IN_CenterView () ;
 TYPE_1__* cl_freelook ;
 int in_mlooking ;
 int qfalse ;

void IN_MLookUp( void ) {
 in_mlooking = qfalse;
 if ( !cl_freelook->integer ) {
  IN_CenterView ();
 }
}
