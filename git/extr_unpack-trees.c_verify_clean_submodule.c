
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int dummy; } ;
struct cache_entry {int oid; } ;


 int check_submodule_move_head (struct cache_entry const*,char const*,int ,struct unpack_trees_options*) ;
 int oid_to_hex (int *) ;
 int submodule_from_ce (struct cache_entry const*) ;

__attribute__((used)) static int verify_clean_submodule(const char *old_sha1,
      const struct cache_entry *ce,
      struct unpack_trees_options *o)
{
 if (!submodule_from_ce(ce))
  return 0;

 return check_submodule_move_head(ce, old_sha1,
      oid_to_hex(&ce->oid), o);
}
