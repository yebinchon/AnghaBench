
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int index; TYPE_3__* entry; TYPE_3__* nextEntry; TYPE_1__* ht; } ;
typedef TYPE_2__ dictIterator ;
struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef TYPE_3__ dictEntry ;
struct TYPE_6__ {TYPE_3__** table; scalar_t__ size; } ;



__attribute__((used)) static dictEntry *dictNext(dictIterator *iter) {
    while (1) {
        if (iter->entry == ((void*)0)) {
            iter->index++;
            if (iter->index >=
                    (signed)iter->ht->size) break;
            iter->entry = iter->ht->table[iter->index];
        } else {
            iter->entry = iter->nextEntry;
        }
        if (iter->entry) {


            iter->nextEntry = iter->entry->next;
            return iter->entry;
        }
    }
    return ((void*)0);
}
