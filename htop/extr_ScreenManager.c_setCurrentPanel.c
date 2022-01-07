
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int currentBar; } ;
typedef TYPE_1__ Panel ;


 int FunctionBar_draw (int ,int *) ;

__attribute__((used)) static Panel* setCurrentPanel(Panel* panel) {
   FunctionBar_draw(panel->currentBar, ((void*)0));
   return panel;
}
