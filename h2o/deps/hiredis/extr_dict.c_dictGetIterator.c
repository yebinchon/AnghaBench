
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int index; int * nextEntry; int * entry; int * ht; } ;
typedef TYPE_1__ dictIterator ;
typedef int dict ;


 TYPE_1__* malloc (int) ;

__attribute__((used)) static dictIterator *dictGetIterator(dict *ht) {
    dictIterator *iter = malloc(sizeof(*iter));

    iter->ht = ht;
    iter->index = -1;
    iter->entry = ((void*)0);
    iter->nextEntry = ((void*)0);
    return iter;
}
