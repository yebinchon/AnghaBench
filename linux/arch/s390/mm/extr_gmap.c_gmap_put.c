
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmap {int ref_count; } ;


 int gmap_free (struct gmap*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void gmap_put(struct gmap *gmap)
{
 if (refcount_dec_and_test(&gmap->ref_count))
  gmap_free(gmap);
}
