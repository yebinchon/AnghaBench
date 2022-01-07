
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap_entry {unsigned int hash; int * next; } ;



__attribute__((used)) static inline void hashmap_entry_init(struct hashmap_entry *e,
     unsigned int hash)
{
 e->hash = hash;
 e->next = ((void*)0);
}
