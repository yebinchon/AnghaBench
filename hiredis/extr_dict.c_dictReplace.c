
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dictEntry ;
typedef int dict ;


 scalar_t__ DICT_OK ;
 scalar_t__ dictAdd (int *,void*,void*) ;
 int * dictFind (int *,void*) ;
 int dictFreeEntryVal (int *,int *) ;
 int dictSetHashVal (int *,int *,void*) ;

__attribute__((used)) static int dictReplace(dict *ht, void *key, void *val) {
    dictEntry *entry, auxentry;



    if (dictAdd(ht, key, val) == DICT_OK)
        return 1;

    entry = dictFind(ht, key);






    auxentry = *entry;
    dictSetHashVal(ht, entry, val);
    dictFreeEntryVal(ht, &auxentry);
    return 0;
}
