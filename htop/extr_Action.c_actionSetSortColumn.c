
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int State ;
typedef int Htop_Reaction ;


 int sortBy (int *) ;

__attribute__((used)) static Htop_Reaction actionSetSortColumn(State* st) {
   return sortBy(st);
}
