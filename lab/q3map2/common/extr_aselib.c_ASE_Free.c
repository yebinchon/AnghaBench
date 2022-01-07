
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int currentObject; } ;


 int ASE_FreeGeomObject (int) ;
 TYPE_1__ ase ;

void ASE_Free( void ){
 int i;

 for ( i = 0; i < ase.currentObject; i++ )
 {
  ASE_FreeGeomObject( i );
 }
}
