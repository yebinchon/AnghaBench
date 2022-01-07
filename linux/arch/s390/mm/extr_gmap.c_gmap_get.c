
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmap {int ref_count; } ;


 int refcount_inc (int *) ;

struct gmap *gmap_get(struct gmap *gmap)
{
 refcount_inc(&gmap->ref_count);
 return gmap;
}
