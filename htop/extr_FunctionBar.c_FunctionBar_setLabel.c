
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int* events; int * functions; } ;
typedef TYPE_1__ FunctionBar ;


 int free (int ) ;
 int xStrdup (char const*) ;

void FunctionBar_setLabel(FunctionBar* this, int event, const char* text) {
   for (int i = 0; i < this->size; i++) {
      if (this->events[i] == event) {
         free(this->functions[i]);
         this->functions[i] = xStrdup(text);
         break;
      }
   }
}
