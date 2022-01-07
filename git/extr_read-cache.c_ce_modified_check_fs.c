
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; int st_size; } ;
struct index_state {int dummy; } ;
struct cache_entry {int ce_mode; } ;


 int DATA_CHANGED ;


 int S_IFMT ;

 int S_ISGITLINK (int ) ;
 int TYPE_CHANGED ;
 int ce_compare_data (struct index_state*,struct cache_entry const*,struct stat*) ;
 int ce_compare_gitlink (struct cache_entry const*) ;
 int ce_compare_link (struct cache_entry const*,int ) ;
 int xsize_t (int ) ;

__attribute__((used)) static int ce_modified_check_fs(struct index_state *istate,
    const struct cache_entry *ce,
    struct stat *st)
{
 switch (st->st_mode & S_IFMT) {
 case 128:
  if (ce_compare_data(istate, ce, st))
   return DATA_CHANGED;
  break;
 case 129:
  if (ce_compare_link(ce, xsize_t(st->st_size)))
   return DATA_CHANGED;
  break;
 case 130:
  if (S_ISGITLINK(ce->ce_mode))
   return ce_compare_gitlink(ce) ? DATA_CHANGED : 0;

 default:
  return TYPE_CHANGED;
 }
 return 0;
}
