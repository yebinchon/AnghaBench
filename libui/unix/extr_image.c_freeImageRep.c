
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gpointer ;
typedef int cairo_surface_t ;


 int cairo_surface_destroy (int *) ;

__attribute__((used)) static void freeImageRep(gpointer item)
{
 cairo_surface_t *cs = (cairo_surface_t *) item;

 cairo_surface_destroy(cs);
}
