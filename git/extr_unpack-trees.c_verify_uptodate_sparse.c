
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int dummy; } ;
struct cache_entry {int dummy; } ;


 int ERROR_SPARSE_NOT_UPTODATE_FILE ;
 int verify_uptodate_1 (struct cache_entry const*,struct unpack_trees_options*,int ) ;

__attribute__((used)) static int verify_uptodate_sparse(const struct cache_entry *ce,
      struct unpack_trees_options *o)
{
 return verify_uptodate_1(ce, o, ERROR_SPARSE_NOT_UPTODATE_FILE);
}
