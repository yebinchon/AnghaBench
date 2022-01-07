
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {double Leading; scalar_t__ Descent; scalar_t__ Ascent; } ;
typedef TYPE_1__ uiDrawTextFontMetrics ;
struct TYPE_9__ {int Thickness; double R; double G; double B; double A; int MiterLimit; int Join; int Cap; int Type; } ;
typedef TYPE_2__ uiDrawStrokeParams ;
typedef int uiDrawPath ;
typedef int uiDrawContext ;
typedef TYPE_2__ uiDrawBrush ;


 int addLeading ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ uiCheckboxChecked (int ) ;
 int uiDrawBrushTypeSolid ;
 int uiDrawClip (int *,int *) ;
 int uiDrawDefaultMiterLimit ;
 int uiDrawFillModeWinding ;
 int uiDrawFreePath (int *) ;
 int uiDrawLineCapFlat ;
 int uiDrawLineJoinMiter ;
 int * uiDrawNewPath (int ) ;
 int uiDrawPathAddRectangle (int *,int ,int ,int,int) ;
 int uiDrawPathEnd (int *) ;
 int uiDrawPathLineTo (int *,int,double) ;
 int uiDrawPathNewFigure (int *,int,double) ;
 int uiDrawRestore (int *) ;
 int uiDrawSave (int *) ;
 int uiDrawStroke (int *,int *,TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static void drawGuides(uiDrawContext *c, uiDrawTextFontMetrics *m)
{
 uiDrawPath *p;
 uiDrawBrush b;
 uiDrawStrokeParams sp;
 double leading;
 double y;

 leading = 0;
 if (uiCheckboxChecked(addLeading))
  leading = m->Leading;

 memset(&b, 0, sizeof (uiDrawBrush));
 b.Type = uiDrawBrushTypeSolid;
 memset(&sp, 0, sizeof (uiDrawStrokeParams));
 sp.Cap = uiDrawLineCapFlat;
 sp.Join = uiDrawLineJoinMiter;
 sp.MiterLimit = uiDrawDefaultMiterLimit;
 sp.Thickness = 2;

 uiDrawSave(c);

 p = uiDrawNewPath(uiDrawFillModeWinding);
 y = 10;
 uiDrawPathNewFigure(p, 8, y);
 y += m->Ascent;
 uiDrawPathLineTo(p, 8, y);
 uiDrawPathEnd(p);
 b.R = 0.94;
 b.G = 0.5;
 b.B = 0.5;
 b.A = 1.0;
 uiDrawStroke(c, p, &b, &sp);
 uiDrawFreePath(p);

 p = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigure(p, 8, y);
 y += m->Descent;
 uiDrawPathLineTo(p, 8, y);
 uiDrawPathEnd(p);
 b.R = 0.12;
 b.G = 0.56;
 b.B = 1.0;
 b.A = 1.0;
 uiDrawStroke(c, p, &b, &sp);
 uiDrawFreePath(p);


 p = uiDrawNewPath(uiDrawFillModeWinding);
 y += leading;
 uiDrawPathNewFigure(p, 8, y);
 y += m->Ascent;
 uiDrawPathLineTo(p, 8, y);
 uiDrawPathEnd(p);
 b.R = 0.94;
 b.G = 0.5;
 b.B = 0.5;
 b.A = 0.75;
 uiDrawStroke(c, p, &b, &sp);
 uiDrawFreePath(p);

 p = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathNewFigure(p, 8, y);
 y += m->Descent;
 uiDrawPathLineTo(p, 8, y);
 uiDrawPathEnd(p);
 b.R = 0.12;
 b.G = 0.56;
 b.B = 1.0;
 b.A = 0.75;
 uiDrawStroke(c, p, &b, &sp);
 uiDrawFreePath(p);


 p = uiDrawNewPath(uiDrawFillModeWinding);
 uiDrawPathAddRectangle(p, 0, 0, 10, 10);
 uiDrawPathEnd(p);
 uiDrawClip(c, p);
 b.R = 0.85;
 b.G = 0.65;
 b.B = 0.13;
 b.A = 1.0;
 uiDrawStroke(c, p, &b, &sp);
 uiDrawFreePath(p);

 uiDrawRestore(c);
}
