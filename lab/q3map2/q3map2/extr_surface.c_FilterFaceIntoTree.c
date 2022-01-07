
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_3__ {int headnode; } ;
typedef TYPE_1__ tree_t ;
typedef int mapDrawSurface_t ;


 int FilterWindingIntoTree_r (int *,int *,int ) ;
 int * WindingFromDrawSurf (int *) ;

int FilterFaceIntoTree( mapDrawSurface_t *ds, tree_t *tree ){
 winding_t *w;
 int refs = 0;



 w = WindingFromDrawSurf( ds );
 refs = FilterWindingIntoTree_r( w, ds, tree->headnode );


 return refs;
}
