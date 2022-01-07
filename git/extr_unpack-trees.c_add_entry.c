
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int result; } ;
struct cache_entry {int dummy; } ;


 int do_add_entry (struct unpack_trees_options*,int ,unsigned int,unsigned int) ;
 int dup_cache_entry (struct cache_entry const*,int *) ;

__attribute__((used)) static void add_entry(struct unpack_trees_options *o,
        const struct cache_entry *ce,
        unsigned int set, unsigned int clear)
{
 do_add_entry(o, dup_cache_entry(ce, &o->result), set, clear);
}
