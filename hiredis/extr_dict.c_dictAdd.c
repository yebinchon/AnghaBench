
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* next; } ;
typedef TYPE_1__ dictEntry ;
struct TYPE_11__ {int used; TYPE_1__** table; } ;
typedef TYPE_2__ dict ;


 int DICT_ERR ;
 int DICT_OK ;
 int _dictKeyIndex (TYPE_2__*,void*) ;
 int dictSetHashKey (TYPE_2__*,TYPE_1__*,void*) ;
 int dictSetHashVal (TYPE_2__*,TYPE_1__*,void*) ;
 TYPE_1__* malloc (int) ;

__attribute__((used)) static int dictAdd(dict *ht, void *key, void *val) {
    int index;
    dictEntry *entry;



    if ((index = _dictKeyIndex(ht, key)) == -1)
        return DICT_ERR;


    entry = malloc(sizeof(*entry));
    entry->next = ht->table[index];
    ht->table[index] = entry;


    dictSetHashKey(ht, entry, key);
    dictSetHashVal(ht, entry, val);
    ht->used++;
    return DICT_OK;
}
