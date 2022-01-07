
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int result; } ;
struct cache_entry {unsigned int ce_flags; } ;


 int ADD_CACHE_OK_TO_ADD ;
 int ADD_CACHE_OK_TO_REPLACE ;
 unsigned int CE_HASHED ;
 unsigned int CE_REMOVE ;
 unsigned int CE_WT_REMOVE ;
 int add_index_entry (int *,struct cache_entry*,int) ;

__attribute__((used)) static int do_add_entry(struct unpack_trees_options *o, struct cache_entry *ce,
    unsigned int set, unsigned int clear)
{
 clear |= CE_HASHED;

 if (set & CE_REMOVE)
  set |= CE_WT_REMOVE;

 ce->ce_flags = (ce->ce_flags & ~clear) | set;
 return add_index_entry(&o->result, ce,
          ADD_CACHE_OK_TO_ADD | ADD_CACHE_OK_TO_REPLACE);
}
