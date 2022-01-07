
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int dummy; } ;
struct cache_entry {int name; } ;


 int ERROR_WOULD_OVERWRITE ;
 int add_rejected_path (struct unpack_trees_options*,int ,int ) ;

__attribute__((used)) static int reject_merge(const struct cache_entry *ce,
   struct unpack_trees_options *o)
{
 return add_rejected_path(o, ERROR_WOULD_OVERWRITE, ce->name);
}
