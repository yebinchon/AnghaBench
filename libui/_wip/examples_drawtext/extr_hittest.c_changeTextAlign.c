
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uiDrawTextAlign ;
typedef int uiCombobox ;
struct TYPE_2__ {scalar_t__ Align; } ;


 TYPE_1__ params ;
 int redraw () ;
 int textAlign ;
 scalar_t__ uiComboboxSelected (int ) ;

__attribute__((used)) static void changeTextAlign(uiCombobox *c, void *data)
{

 params.Align = (uiDrawTextAlign) uiComboboxSelected(textAlign);
 redraw();
}
