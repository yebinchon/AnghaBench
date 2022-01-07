
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cubemapIndex; int fogIndex; int shader; int data; } ;
typedef TYPE_1__ msurface_t ;


 int R_AddDrawSurf (int ,int ,int ,int,int,int ) ;
 scalar_t__ R_CullSurface (TYPE_1__*) ;
 int R_DlightSurface (TYPE_1__*,int) ;
 int R_PshadowSurface (TYPE_1__*,int) ;

__attribute__((used)) static void R_AddWorldSurface( msurface_t *surf, int dlightBits, int pshadowBits ) {



 if ( R_CullSurface( surf ) ) {
  return;
 }


                       {
  dlightBits = R_DlightSurface( surf, dlightBits );
  dlightBits = ( dlightBits != 0 );
 }


                        {
  pshadowBits = R_PshadowSurface( surf, pshadowBits);
  pshadowBits = ( pshadowBits != 0 );
 }

 R_AddDrawSurf( surf->data, surf->shader, surf->fogIndex, dlightBits, pshadowBits, surf->cubemapIndex );
}
