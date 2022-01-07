
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matcher {int targetX; int targetY; int distX; int distY; int * best; scalar_t__ foundLarger; } ;
typedef scalar_t__ gpointer ;
typedef int cairo_surface_t ;


 scalar_t__ TRUE ;
 void* abs (int) ;
 int cairo_image_surface_get_height (int *) ;
 int cairo_image_surface_get_width (int *) ;

__attribute__((used)) static void match(gpointer surface, gpointer data)
{
 cairo_surface_t *cs = (cairo_surface_t *) surface;
 struct matcher *m = (struct matcher *) data;
 int x, y;
 int x2, y2;

 x = cairo_image_surface_get_width(cs);
 y = cairo_image_surface_get_height(cs);
 if (m->best == ((void*)0))
  goto writeMatch;

 if (x < m->targetX && y < m->targetY)
  if (m->foundLarger)

   return;
 if (x >= m->targetX && y >= m->targetY && !m->foundLarger)

  goto writeMatch;

 x2 = abs(m->targetX - x);
 y2 = abs(m->targetY - y);
 if (x2 < m->distX && y2 < m->distY)
  goto writeMatch;


 return;

writeMatch:

 if (x >= m->targetX && y >= m->targetY && !m->foundLarger)
  m->foundLarger = TRUE;
 m->best = cs;
 m->distX = abs(m->targetX - x);
 m->distY = abs(m->targetY - y);
}
