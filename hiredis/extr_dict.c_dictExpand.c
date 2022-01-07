
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* next; int key; } ;
typedef TYPE_1__ dictEntry ;
struct TYPE_9__ {unsigned long used; unsigned long size; unsigned long sizemask; TYPE_1__** table; int privdata; int type; } ;
typedef TYPE_2__ dict ;


 int DICT_ERR ;
 int DICT_OK ;
 int _dictInit (TYPE_2__*,int ,int ) ;
 unsigned long _dictNextPower (unsigned long) ;
 int assert (int) ;
 TYPE_1__** calloc (unsigned long,int) ;
 unsigned int dictHashKey (TYPE_2__*,int ) ;
 int free (TYPE_1__**) ;

__attribute__((used)) static int dictExpand(dict *ht, unsigned long size) {
    dict n;
    unsigned long realsize = _dictNextPower(size), i;



    if (ht->used > size)
        return DICT_ERR;

    _dictInit(&n, ht->type, ht->privdata);
    n.size = realsize;
    n.sizemask = realsize-1;
    n.table = calloc(realsize,sizeof(dictEntry*));




    n.used = ht->used;
    for (i = 0; i < ht->size && ht->used > 0; i++) {
        dictEntry *he, *nextHe;

        if (ht->table[i] == ((void*)0)) continue;


        he = ht->table[i];
        while(he) {
            unsigned int h;

            nextHe = he->next;

            h = dictHashKey(ht, he->key) & n.sizemask;
            he->next = n.table[h];
            n.table[h] = he;
            ht->used--;

            he = nextHe;
        }
    }
    assert(ht->used == 0);
    free(ht->table);


    *ht = n;
    return DICT_OK;
}
