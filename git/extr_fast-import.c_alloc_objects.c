
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_entry_pool {scalar_t__ entries; scalar_t__ end; scalar_t__ next_free; struct object_entry_pool* next_pool; } ;
struct object_entry {int dummy; } ;


 unsigned int alloc_count ;
 struct object_entry_pool* blocks ;
 struct object_entry_pool* xmalloc (int) ;

__attribute__((used)) static void alloc_objects(unsigned int cnt)
{
 struct object_entry_pool *b;

 b = xmalloc(sizeof(struct object_entry_pool)
  + cnt * sizeof(struct object_entry));
 b->next_pool = blocks;
 b->next_free = b->entries;
 b->end = b->entries + cnt;
 blocks = b;
 alloc_count += cnt;
}
