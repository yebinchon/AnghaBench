
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int surfaceExtra_t ;


 scalar_t__ GROW_SURFACE_EXTRAS ;
 int free (int *) ;
 int maxSurfaceExtras ;
 int memcpy (int *,int *,int) ;
 int numSurfaceExtras ;
 int * safe_malloc (int) ;
 int seDefault ;
 int * surfaceExtras ;

__attribute__((used)) static surfaceExtra_t *AllocSurfaceExtra( void ){
 surfaceExtra_t *se;



 if ( numSurfaceExtras >= maxSurfaceExtras ) {

  maxSurfaceExtras += GROW_SURFACE_EXTRAS;
  se = safe_malloc( maxSurfaceExtras * sizeof( surfaceExtra_t ) );
  if ( surfaceExtras != ((void*)0) ) {
   memcpy( se, surfaceExtras, numSurfaceExtras * sizeof( surfaceExtra_t ) );
   free( surfaceExtras );
  }
  surfaceExtras = se;
 }


 se = &surfaceExtras[ numSurfaceExtras ];
 numSurfaceExtras++;
 memcpy( se, &seDefault, sizeof( surfaceExtra_t ) );


 return se;
}
