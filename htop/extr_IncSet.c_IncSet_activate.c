
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* active; TYPE_1__* modes; } ;
struct TYPE_7__ {int currentBar; } ;
struct TYPE_6__ {int bar; int buffer; } ;
typedef TYPE_2__ Panel ;
typedef size_t IncType ;
typedef TYPE_3__ IncSet ;


 int FunctionBar_draw (int ,int ) ;

void IncSet_activate(IncSet* this, IncType type, Panel* panel) {
   this->active = &(this->modes[type]);
   FunctionBar_draw(this->active->bar, this->active->buffer);
   panel->currentBar = this->active->bar;
}
