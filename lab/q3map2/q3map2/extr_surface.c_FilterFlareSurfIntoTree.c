
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int headnode; } ;
typedef TYPE_1__ tree_t ;
struct TYPE_7__ {int lightmapOrigin; } ;
typedef TYPE_2__ mapDrawSurface_t ;


 int FilterPointIntoTree_r (int ,TYPE_2__*,int ) ;

__attribute__((used)) static int FilterFlareSurfIntoTree( mapDrawSurface_t *ds, tree_t *tree ){
 return FilterPointIntoTree_r( ds->lightmapOrigin, ds, tree->headnode );
}
