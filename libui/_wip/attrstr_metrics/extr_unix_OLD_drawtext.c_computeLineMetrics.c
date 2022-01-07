
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ ParagraphSpacing; scalar_t__ LineSpacing; scalar_t__ LineHeightSpace; scalar_t__ ParagraphSpacingBefore; scalar_t__ Leading; void* Descent; void* Ascent; void* BaselineY; void* Height; void* Width; void* Y; void* X; } ;
typedef TYPE_1__ uiDrawTextLayoutLineMetrics ;
struct TYPE_13__ {int nLines; int layout; TYPE_1__* lineMetrics; } ;
typedef TYPE_2__ uiDrawTextLayout ;
struct TYPE_15__ {int start_index; } ;
struct TYPE_14__ {int x; int width; int height; } ;
typedef TYPE_3__ PangoRectangle ;
typedef TYPE_4__ PangoLayoutLine ;
typedef int PangoLayoutIter ;


 int PANGO_ASCENT (TYPE_3__) ;
 int PANGO_DESCENT (TYPE_3__) ;
 void* pangoToCairo (int) ;
 int * pango_layout_get_iter (int ) ;
 int pango_layout_index_to_pos (int ,int ,TYPE_3__*) ;
 int pango_layout_iter_free (int *) ;
 int pango_layout_iter_get_baseline (int *) ;
 TYPE_4__* pango_layout_iter_get_line_readonly (int *) ;
 int pango_layout_iter_next_line (int *) ;
 int pango_layout_line_get_extents (TYPE_4__*,int *,TYPE_3__*) ;
 scalar_t__ uiAlloc (int,char*) ;

__attribute__((used)) static void computeLineMetrics(uiDrawTextLayout *tl)
{
 PangoLayoutIter *iter;
 PangoLayoutLine *pll;
 PangoRectangle lineStartPos, lineExtents;
 int i, n;
 uiDrawTextLayoutLineMetrics *m;

 n = tl->nLines;
 tl->lineMetrics = (uiDrawTextLayoutLineMetrics *) uiAlloc(n * sizeof (uiDrawTextLayoutLineMetrics), "uiDrawTextLayoutLineMetrics[] (text layout)");
 iter = pango_layout_get_iter(tl->layout);

 m = tl->lineMetrics;
 for (i = 0; i < n; i++) {
  int baselineY;


  baselineY = pango_layout_iter_get_baseline(iter);
  pll = pango_layout_iter_get_line_readonly(iter);
  pango_layout_index_to_pos(tl->layout, pll->start_index, &lineStartPos);
  pango_layout_line_get_extents(pll, ((void*)0), &lineExtents);



  m->X = pangoToCairo(lineStartPos.x);

  m->Y = pangoToCairo(baselineY - PANGO_ASCENT(lineExtents));

  m->Width = pangoToCairo(lineExtents.width);
  m->Height = pangoToCairo(lineExtents.height);

  m->BaselineY = pangoToCairo(baselineY);
  m->Ascent = pangoToCairo(PANGO_ASCENT(lineExtents));
  m->Descent = pangoToCairo(PANGO_DESCENT(lineExtents));
  m->Leading = 0;

  m->ParagraphSpacingBefore = 0;
  m->LineHeightSpace = 0;
  m->LineSpacing = 0;
  m->ParagraphSpacing = 0;


  pango_layout_iter_next_line(iter);
  m++;
 }

 pango_layout_iter_free(iter);
}
