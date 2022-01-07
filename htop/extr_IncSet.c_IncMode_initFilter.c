
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int isFilter; int bar; } ;
typedef TYPE_1__ IncMode ;


 int FunctionBar_new (int ,int ,int ) ;
 int filterEvents ;
 int filterFunctions ;
 int filterKeys ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static inline void IncMode_initFilter(IncMode* filter) {
   memset(filter, 0, sizeof(IncMode));
   filter->bar = FunctionBar_new(filterFunctions, filterKeys, filterEvents);
   filter->isFilter = 1;
}
