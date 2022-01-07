
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; int key; } ;
typedef TYPE_1__ dictEntry ;
struct TYPE_8__ {scalar_t__ size; unsigned int sizemask; TYPE_1__** table; } ;
typedef TYPE_2__ dict ;


 scalar_t__ dictCompareHashKeys (TYPE_2__*,void const*,int ) ;
 unsigned int dictHashKey (TYPE_2__*,void const*) ;

__attribute__((used)) static dictEntry *dictFind(dict *ht, const void *key) {
    dictEntry *he;
    unsigned int h;

    if (ht->size == 0) return ((void*)0);
    h = dictHashKey(ht, key) & ht->sizemask;
    he = ht->table[h];
    while(he) {
        if (dictCompareHashKeys(ht, key, he->key))
            return he;
        he = he->next;
    }
    return ((void*)0);
}
