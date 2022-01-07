
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int surfaceExtra_t ;


 int numSurfaceExtras ;
 int seDefault ;
 int * surfaceExtras ;

__attribute__((used)) static surfaceExtra_t *GetSurfaceExtra( int num ){
 if ( num < 0 || num >= numSurfaceExtras ) {
  return &seDefault;
 }
 return &surfaceExtras[ num ];
}
