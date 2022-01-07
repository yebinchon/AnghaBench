
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec {int dummy; } ;
struct index_state {int dummy; } ;


 int DO_MATCH_DIRECTORY ;
 int DO_MATCH_LEADING_PATHSPEC ;
 int do_match_pathspec (struct index_state const*,struct pathspec const*,char const*,int ,int ,char*,int) ;
 int strlen (char const*) ;

int submodule_path_match(const struct index_state *istate,
    const struct pathspec *ps,
    const char *submodule_name,
    char *seen)
{
 int matched = do_match_pathspec(istate, ps, submodule_name,
     strlen(submodule_name),
     0, seen,
     DO_MATCH_DIRECTORY |
     DO_MATCH_LEADING_PATHSPEC);
 return matched;
}
