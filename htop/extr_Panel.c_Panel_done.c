
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int header; int defaultBar; int items; int eventHandlerState; } ;
typedef TYPE_1__ Panel ;


 int FunctionBar_delete (int ) ;
 int RichString_end (int ) ;
 int Vector_delete (int ) ;
 int assert (int ) ;
 int free (int ) ;

void Panel_done(Panel* this) {
   assert (this != ((void*)0));
   free(this->eventHandlerState);
   Vector_delete(this->items);
   FunctionBar_delete(this->defaultBar);
   RichString_end(this->header);
}
