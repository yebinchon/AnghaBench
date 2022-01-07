
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int defaultBar; TYPE_1__* active; } ;
struct TYPE_4__ {int * buffer; int bar; } ;
typedef TYPE_2__ IncSet ;


 int FunctionBar_draw (int ,int *) ;

void IncSet_drawBar(IncSet* this) {
   if (this->active) {
      FunctionBar_draw(this->active->bar, this->active->buffer);
   } else {
      FunctionBar_draw(this->defaultBar, ((void*)0));
   }
}
