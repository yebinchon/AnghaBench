#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* next; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ dictEntry ;
struct TYPE_8__ {unsigned int sizemask; TYPE_1__** table; } ;
typedef  TYPE_2__ dict ;

/* Variables and functions */
 scalar_t__ DICT_ERR ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,void const*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (TYPE_2__*,void const*) ; 

__attribute__((used)) static int FUNC3(dict *ht, const void *key) {
    unsigned int h;
    dictEntry *he;

    /* Expand the hashtable if needed */
    if (FUNC0(ht) == DICT_ERR)
        return -1;
    /* Compute the key hash value */
    h = FUNC2(ht, key) & ht->sizemask;
    /* Search if this slot does not already contain the given key */
    he = ht->table[h];
    while(he) {
        if (FUNC1(ht, key, he->key))
            return -1;
        he = he->next;
    }
    return h;
}