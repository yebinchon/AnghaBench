
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filtering; int * defaultBar; int * active; int * modes; } ;
typedef TYPE_1__ IncSet ;
typedef int FunctionBar ;


 size_t INC_FILTER ;
 size_t INC_SEARCH ;
 int IncMode_initFilter (int *) ;
 int IncMode_initSearch (int *) ;
 TYPE_1__* xCalloc (int,int) ;

IncSet* IncSet_new(FunctionBar* bar) {
   IncSet* this = xCalloc(1, sizeof(IncSet));
   IncMode_initSearch(&(this->modes[INC_SEARCH]));
   IncMode_initFilter(&(this->modes[INC_FILTER]));
   this->active = ((void*)0);
   this->filtering = 0;
   this->defaultBar = bar;
   return this;
}
