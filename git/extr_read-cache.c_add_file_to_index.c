
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct index_state {int dummy; } ;


 int _ (char*) ;
 int add_to_index (struct index_state*,char const*,struct stat*,int) ;
 int die_errno (int ,char const*) ;
 scalar_t__ lstat (char const*,struct stat*) ;

int add_file_to_index(struct index_state *istate, const char *path, int flags)
{
 struct stat st;
 if (lstat(path, &st))
  die_errno(_("unable to stat '%s'"), path);
 return add_to_index(istate, path, &st, flags);
}
