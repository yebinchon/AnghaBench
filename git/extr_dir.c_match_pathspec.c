
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec {int magic; } ;
struct index_state {int dummy; } ;


 unsigned int DO_MATCH_DIRECTORY ;
 unsigned int DO_MATCH_EXCLUDE ;
 int PATHSPEC_EXCLUDE ;
 int do_match_pathspec (struct index_state const*,struct pathspec const*,char const*,int,int,char*,unsigned int) ;

int match_pathspec(const struct index_state *istate,
     const struct pathspec *ps,
     const char *name, int namelen,
     int prefix, char *seen, int is_dir)
{
 int positive, negative;
 unsigned flags = is_dir ? DO_MATCH_DIRECTORY : 0;
 positive = do_match_pathspec(istate, ps, name, namelen,
         prefix, seen, flags);
 if (!(ps->magic & PATHSPEC_EXCLUDE) || !positive)
  return positive;
 negative = do_match_pathspec(istate, ps, name, namelen,
         prefix, seen,
         flags | DO_MATCH_EXCLUDE);
 return negative ? 0 : positive;
}
