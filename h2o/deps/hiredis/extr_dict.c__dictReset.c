
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ used; scalar_t__ sizemask; scalar_t__ size; int * table; } ;
typedef TYPE_1__ dict ;



__attribute__((used)) static void _dictReset(dict *ht) {
    ht->table = ((void*)0);
    ht->size = 0;
    ht->sizemask = 0;
    ht->used = 0;
}
