
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; int owner; int ** buckets; scalar_t__ items; } ;
typedef int HashtableItem ;
typedef TYPE_1__ Hashtable ;


 int Hashtable_isConsistent (TYPE_1__*) ;
 int assert (int ) ;
 scalar_t__ xCalloc (int,int) ;
 TYPE_1__* xMalloc (int) ;

Hashtable* Hashtable_new(int size, bool owner) {
   Hashtable* this;

   this = xMalloc(sizeof(Hashtable));
   this->items = 0;
   this->size = size;
   this->buckets = (HashtableItem**) xCalloc(size, sizeof(HashtableItem*));
   this->owner = owner;
   assert(Hashtable_isConsistent(this));
   return this;
}
