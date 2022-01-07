
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int key; int * next; void* value; } ;
typedef TYPE_1__ HashtableItem ;


 TYPE_1__* xMalloc (int) ;

__attribute__((used)) static HashtableItem* HashtableItem_new(unsigned int key, void* value) {
   HashtableItem* this;

   this = xMalloc(sizeof(HashtableItem));
   this->key = key;
   this->value = value;
   this->next = ((void*)0);
   return this;
}
