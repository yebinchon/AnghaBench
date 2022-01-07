
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec {int dummy; } ;
struct index_state {int dummy; } ;
struct cache_entry {int ce_mode; int name; } ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISGITLINK (int ) ;
 int ce_namelen (struct cache_entry const*) ;
 int match_pathspec (struct index_state const*,struct pathspec const*,int ,int ,int ,char*,int) ;

__attribute__((used)) static inline int ce_path_match(const struct index_state *istate,
    const struct cache_entry *ce,
    const struct pathspec *pathspec,
    char *seen)
{
 return match_pathspec(istate, pathspec, ce->name, ce_namelen(ce), 0, seen,
         S_ISDIR(ce->ce_mode) || S_ISGITLINK(ce->ce_mode));
}
