
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec {int nr; } ;
struct index_state {int dummy; } ;


 int add_pathspec_matches_against_index (struct pathspec const*,struct index_state const*,char*) ;
 char* xcalloc (int ,int) ;

char *find_pathspecs_matching_against_index(const struct pathspec *pathspec,
         const struct index_state *istate)
{
 char *seen = xcalloc(pathspec->nr, 1);
 add_pathspec_matches_against_index(pathspec, istate, seen);
 return seen;
}
