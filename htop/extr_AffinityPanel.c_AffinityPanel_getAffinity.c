
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ProcessList ;
typedef int Panel ;
typedef int CheckItem ;
typedef int Affinity ;


 int Affinity_add (int *,int) ;
 int * Affinity_new (int *) ;
 scalar_t__ CheckItem_get (int *) ;
 scalar_t__ Panel_get (int *,int) ;
 int Panel_size (int *) ;

Affinity* AffinityPanel_getAffinity(Panel* this, ProcessList* pl) {
   Affinity* affinity = Affinity_new(pl);
   int size = Panel_size(this);
   for (int i = 0; i < size; i++) {
      if (CheckItem_get((CheckItem*)Panel_get(this, i)))
         Affinity_add(affinity, i);
   }
   return affinity;
}
