
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int size; TYPE_1__** buckets; } ;
struct TYPE_5__ {struct TYPE_5__* next; int value; int key; } ;
typedef int (* Hashtable_PairFunction ) (int ,int ,void*) ;
typedef TYPE_1__ HashtableItem ;
typedef TYPE_2__ Hashtable ;


 int Hashtable_isConsistent (TYPE_2__*) ;
 int assert (int ) ;

void Hashtable_foreach(Hashtable* this, Hashtable_PairFunction f, void* userData) {
   assert(Hashtable_isConsistent(this));
   for (int i = 0; i < this->size; i++) {
      HashtableItem* walk = this->buckets[i];
      while (walk != ((void*)0)) {
         f(walk->key, walk->value, userData);
         walk = walk->next;
      }
   }
   assert(Hashtable_isConsistent(this));
}
