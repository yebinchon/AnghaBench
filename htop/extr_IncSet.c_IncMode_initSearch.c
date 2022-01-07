
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int isFilter; int bar; } ;
typedef TYPE_1__ IncMode ;


 int FunctionBar_new (int ,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int searchEvents ;
 int searchFunctions ;
 int searchKeys ;

__attribute__((used)) static inline void IncMode_initSearch(IncMode* search) {
   memset(search, 0, sizeof(IncMode));
   search->bar = FunctionBar_new(searchFunctions, searchKeys, searchEvents);
   search->isFilter = 0;
}
