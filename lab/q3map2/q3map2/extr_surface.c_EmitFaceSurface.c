
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mapDrawSurface_t ;


 int EmitTriangleSurface (int *) ;
 int StripFaceSurface (int *) ;

__attribute__((used)) static void EmitFaceSurface( mapDrawSurface_t *ds ){

 StripFaceSurface( ds );
 EmitTriangleSurface( ds );
}
