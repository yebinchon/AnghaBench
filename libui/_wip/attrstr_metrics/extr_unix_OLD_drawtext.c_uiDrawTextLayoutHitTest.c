
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nLines; int layout; TYPE_1__* lineMetrics; } ;
typedef TYPE_2__ uiDrawTextLayout ;
struct TYPE_4__ {double Y; double Height; } ;


 int cairoToPango (double) ;
 int pango_layout_get_line_count (int ) ;
 int pango_layout_xy_to_index (int ,int ,int ,int*,int*) ;

void uiDrawTextLayoutHitTest(uiDrawTextLayout *tl, double x, double y, size_t *pos, int *line)
{
 int p, trailing;
 int i;


 pango_layout_xy_to_index(tl->layout,
  cairoToPango(x), cairoToPango(y),
  &p, &trailing);


 if (trailing != 0)
  p += trailing;
 *pos = p;

 for (i = 0; i < tl->nLines; i++) {
  double ltop, lbottom;

  ltop = tl->lineMetrics[i].Y;
  lbottom = ltop + tl->lineMetrics[i].Height;

  if (y < lbottom)
   break;
 }
 if (i == pango_layout_get_line_count(tl->layout))
  i--;
 *line = i;
}
