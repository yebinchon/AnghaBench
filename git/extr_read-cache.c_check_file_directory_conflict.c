
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
struct cache_entry {int ce_flags; } ;


 int CE_REMOVE ;
 int has_dir_name (struct index_state*,struct cache_entry const*,int,int) ;
 int has_file_name (struct index_state*,struct cache_entry const*,int,int) ;

__attribute__((used)) static int check_file_directory_conflict(struct index_state *istate,
      const struct cache_entry *ce,
      int pos, int ok_to_replace)
{
 int retval;




 if (ce->ce_flags & CE_REMOVE)
  return 0;






 retval = has_file_name(istate, ce, pos, ok_to_replace);





 return retval + has_dir_name(istate, ce, pos, ok_to_replace);
}
