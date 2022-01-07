
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {struct TYPE_11__* next; int key; } ;
typedef TYPE_1__ dictEntry ;
struct TYPE_12__ {scalar_t__ size; unsigned int sizemask; int used; TYPE_1__** table; } ;
typedef TYPE_2__ dict ;


 int DICT_ERR ;
 int DICT_OK ;
 scalar_t__ dictCompareHashKeys (TYPE_2__*,void const*,int ) ;
 int dictFreeEntryKey (TYPE_2__*,TYPE_1__*) ;
 int dictFreeEntryVal (TYPE_2__*,TYPE_1__*) ;
 unsigned int dictHashKey (TYPE_2__*,void const*) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static int dictDelete(dict *ht, const void *key) {
    unsigned int h;
    dictEntry *de, *prevde;

    if (ht->size == 0)
        return DICT_ERR;
    h = dictHashKey(ht, key) & ht->sizemask;
    de = ht->table[h];

    prevde = ((void*)0);
    while(de) {
        if (dictCompareHashKeys(ht,key,de->key)) {

            if (prevde)
                prevde->next = de->next;
            else
                ht->table[h] = de->next;

            dictFreeEntryKey(ht,de);
            dictFreeEntryVal(ht,de);
            free(de);
            ht->used--;
            return DICT_OK;
        }
        prevde = de;
        de = de->next;
    }
    return DICT_ERR;
}
