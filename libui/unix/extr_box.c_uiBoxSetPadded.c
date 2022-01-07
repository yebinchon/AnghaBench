
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int padded; int box; scalar_t__ vertical; } ;
typedef TYPE_1__ uiBox ;


 int gtk_box_set_spacing (int ,int ) ;
 int uiprivGTKXPadding ;
 int uiprivGTKYPadding ;

void uiBoxSetPadded(uiBox *b, int padded)
{
 b->padded = padded;
 if (b->padded)
  if (b->vertical)
   gtk_box_set_spacing(b->box, uiprivGTKYPadding);
  else
   gtk_box_set_spacing(b->box, uiprivGTKXPadding);
 else
  gtk_box_set_spacing(b->box, 0);
}
