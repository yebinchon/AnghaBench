
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int padded; int grid; } ;
typedef TYPE_1__ uiForm ;


 int gtk_grid_set_column_spacing (int ,int ) ;
 int gtk_grid_set_row_spacing (int ,int ) ;
 int uiprivGTKXPadding ;
 int uiprivGTKYPadding ;

void uiFormSetPadded(uiForm *f, int padded)
{
 f->padded = padded;
 if (f->padded) {
  gtk_grid_set_row_spacing(f->grid, uiprivGTKYPadding);
  gtk_grid_set_column_spacing(f->grid, uiprivGTKXPadding);
 } else {
  gtk_grid_set_row_spacing(f->grid, 0);
  gtk_grid_set_column_spacing(f->grid, 0);
 }
}
