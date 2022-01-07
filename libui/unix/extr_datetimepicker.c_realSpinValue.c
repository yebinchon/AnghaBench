
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkSpinButton ;
typedef int GtkAdjustment ;


 scalar_t__ gtk_adjustment_get_value (int *) ;
 int * gtk_spin_button_get_adjustment (int *) ;

__attribute__((used)) static int realSpinValue(GtkSpinButton *spinButton)
{
 GtkAdjustment *adj;

 adj = gtk_spin_button_get_adjustment(spinButton);
 return (int) gtk_adjustment_get_value(adj);
}
