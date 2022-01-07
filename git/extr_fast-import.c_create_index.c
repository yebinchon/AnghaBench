
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pack_idx_entry {int dummy; } ;
struct object_entry_pool {int entries; struct object_entry* next_free; struct object_entry_pool* next_pool; } ;
struct object_entry {scalar_t__ pack_id; int idx; } ;
struct TYPE_2__ {int hash; } ;


 int ALLOC_ARRAY (struct pack_idx_entry**,int) ;
 struct object_entry_pool* blocks ;
 int die (char*) ;
 int free (struct pack_idx_entry**) ;
 int object_count ;
 TYPE_1__* pack_data ;
 scalar_t__ pack_id ;
 int pack_idx_opts ;
 char* write_idx_file (int *,struct pack_idx_entry**,int,int *,int ) ;

__attribute__((used)) static const char *create_index(void)
{
 const char *tmpfile;
 struct pack_idx_entry **idx, **c, **last;
 struct object_entry *e;
 struct object_entry_pool *o;


 ALLOC_ARRAY(idx, object_count);
 c = idx;
 for (o = blocks; o; o = o->next_pool)
  for (e = o->next_free; e-- != o->entries;)
   if (pack_id == e->pack_id)
    *c++ = &e->idx;
 last = idx + object_count;
 if (c != last)
  die("internal consistency error creating the index");

 tmpfile = write_idx_file(((void*)0), idx, object_count, &pack_idx_opts,
     pack_data->hash);
 free(idx);
 return tmpfile;
}
