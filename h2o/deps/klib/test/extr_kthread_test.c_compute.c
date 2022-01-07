
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xmin; int xmax; int w; int ymin; int ymax; int h; int* k; int max_iter; } ;
typedef TYPE_1__ global_t ;


 int assert (int) ;

__attribute__((used)) static void compute(void *_g, int i, int tid)
{
 global_t *g = (global_t*)_g;
 double x, x0 = g->xmin + (g->xmax - g->xmin) * (i%g->w) / g->w;
 double y, y0 = g->ymin + (g->ymax - g->ymin) * (i/g->w) / g->h;
 int k;

 assert(g->k[i] < 0);
 x = x0, y = y0;
 for (k = 0; k < g->max_iter; ++k) {
  double z = x * y;
  x *= x; y *= y;
  if (x + y >= 4) break;
  x = x - y + x0;
  y = z + z + y0;
 }
 g->k[i] = k;
}
