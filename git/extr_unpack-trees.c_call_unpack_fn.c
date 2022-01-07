
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int (* fn ) (struct cache_entry const* const*,struct unpack_trees_options*) ;} ;
struct cache_entry {int dummy; } ;


 int stub1 (struct cache_entry const* const*,struct unpack_trees_options*) ;

__attribute__((used)) static inline int call_unpack_fn(const struct cache_entry * const *src,
     struct unpack_trees_options *o)
{
 int ret = o->fn(src, o);
 if (ret > 0)
  ret = 0;
 return ret;
}
