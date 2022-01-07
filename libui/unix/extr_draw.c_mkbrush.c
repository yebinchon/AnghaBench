
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int Type; size_t NumStops; TYPE_1__* Stops; int OuterRadius; int Y1; int X1; int Y0; int X0; int A; int B; int G; int R; } ;
typedef TYPE_2__ uiDrawBrush ;
typedef int cairo_pattern_t ;
struct TYPE_4__ {int A; int B; int G; int R; int Pos; } ;


 scalar_t__ CAIRO_STATUS_SUCCESS ;
 int cairo_pattern_add_color_stop_rgba (int *,int ,int ,int ,int ,int ) ;
 int * cairo_pattern_create_linear (int ,int ,int ,int ) ;
 int * cairo_pattern_create_radial (int ,int ,int ,int ,int ,int ) ;
 int * cairo_pattern_create_rgba (int ,int ,int ,int ) ;
 scalar_t__ cairo_pattern_status (int *) ;
 int cairo_status_to_string (scalar_t__) ;



 int uiprivImplBug (char*,int ) ;

__attribute__((used)) static cairo_pattern_t *mkbrush(uiDrawBrush *b)
{
 cairo_pattern_t *pat;
 size_t i;

 switch (b->Type) {
 case 128:
  pat = cairo_pattern_create_rgba(b->R, b->G, b->B, b->A);
  break;
 case 130:
  pat = cairo_pattern_create_linear(b->X0, b->Y0, b->X1, b->Y1);
  break;
 case 129:

  pat = cairo_pattern_create_radial(
   b->X0, b->Y0, 0,
   b->X1, b->Y1, b->OuterRadius);
  break;

 }
 if (cairo_pattern_status(pat) != CAIRO_STATUS_SUCCESS)
  uiprivImplBug("error creating pattern in mkbrush(): %s",
   cairo_status_to_string(cairo_pattern_status(pat)));
 switch (b->Type) {
 case 130:
 case 129:
  for (i = 0; i < b->NumStops; i++)
   cairo_pattern_add_color_stop_rgba(pat,
    b->Stops[i].Pos,
    b->Stops[i].R,
    b->Stops[i].G,
    b->Stops[i].B,
    b->Stops[i].A);
 }
 return pat;
}
