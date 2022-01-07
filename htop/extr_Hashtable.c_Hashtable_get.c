
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int size; TYPE_1__** buckets; } ;
struct TYPE_5__ {unsigned int key; void* value; struct TYPE_5__* next; } ;
typedef TYPE_1__ HashtableItem ;
typedef TYPE_2__ Hashtable ;


 int Hashtable_isConsistent (TYPE_2__*) ;
 int assert (int ) ;

inline void* Hashtable_get(Hashtable* this, unsigned int key) {
   unsigned int index = key % this->size;
   HashtableItem* bucketPtr = this->buckets[index];
   while (1) {
      if (bucketPtr == ((void*)0)) {
         assert(Hashtable_isConsistent(this));
         return ((void*)0);
      } else if (bucketPtr->key == key) {
         assert(Hashtable_isConsistent(this));
         return bucketPtr->value;
      } else
         bucketPtr = bucketPtr->next;
   }
}
