
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned int size; scalar_t__ owner; int items; TYPE_1__** buckets; } ;
struct TYPE_6__ {unsigned int key; struct TYPE_6__* next; void* value; } ;
typedef TYPE_1__ HashtableItem ;
typedef TYPE_2__ Hashtable ;


 TYPE_1__* HashtableItem_new (unsigned int,void*) ;
 int Hashtable_isConsistent (TYPE_2__*) ;
 int assert (int ) ;
 int free (void*) ;

void Hashtable_put(Hashtable* this, unsigned int key, void* value) {
   unsigned int index = key % this->size;
   HashtableItem** bucketPtr = &(this->buckets[index]);
   while (1)
      if (*bucketPtr == ((void*)0)) {
         *bucketPtr = HashtableItem_new(key, value);
         this->items++;
         break;
      } else if ((*bucketPtr)->key == key) {
         if (this->owner)
            free((*bucketPtr)->value);
         (*bucketPtr)->value = value;
         break;
      } else
         bucketPtr = &((*bucketPtr)->next);
   assert(Hashtable_isConsistent(this));
}
