
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gulong ;
typedef int GtkSpinButton ;
typedef int GtkAdjustment ;


 int g_signal_handler_block (int *,int ) ;
 int g_signal_handler_unblock (int *,int ) ;
 int gtk_adjustment_set_value (int *,int) ;
 int * gtk_spin_button_get_adjustment (int *) ;

__attribute__((used)) static void setRealSpinValue(GtkSpinButton *spinButton, int value, gulong block)
{
 GtkAdjustment *adj;

 g_signal_handler_block(spinButton, block);
 adj = gtk_spin_button_get_adjustment(spinButton);
 gtk_adjustment_set_value(adj, value);
 g_signal_handler_unblock(spinButton, block);
}
