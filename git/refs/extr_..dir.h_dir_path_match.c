
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec {int dummy; } ;
struct index_state {int dummy; } ;
struct dir_entry {int len; char* name; } ;


 int match_pathspec (struct index_state const*,struct pathspec const*,char*,int,int,char*,int) ;

__attribute__((used)) static inline int dir_path_match(const struct index_state *istate,
     const struct dir_entry *ent,
     const struct pathspec *pathspec,
     int prefix, char *seen)
{
 int has_trailing_dir = ent->len && ent->name[ent->len - 1] == '/';
 int len = has_trailing_dir ? ent->len - 1 : ent->len;
 return match_pathspec(istate, pathspec, ent->name, len, prefix, seen,
         has_trailing_dir);
}
