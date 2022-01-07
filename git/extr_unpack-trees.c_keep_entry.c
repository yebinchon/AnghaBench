
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int dummy; } ;
struct cache_entry {int dummy; } ;


 int add_entry (struct unpack_trees_options*,struct cache_entry const*,int ,int ) ;
 scalar_t__ ce_stage (struct cache_entry const*) ;
 int invalidate_ce_path (struct cache_entry const*,struct unpack_trees_options*) ;

__attribute__((used)) static int keep_entry(const struct cache_entry *ce,
        struct unpack_trees_options *o)
{
 add_entry(o, ce, 0, 0);
 if (ce_stage(ce))
  invalidate_ce_path(ce, o);
 return 1;
}
