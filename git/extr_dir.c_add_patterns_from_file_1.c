
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pattern_list {int dummy; } ;
struct oid_stat {int dummy; } ;
struct dir_struct {int unmanaged_exclude_files; int untracked; } ;


 int EXC_FILE ;
 int _ (char*) ;
 struct pattern_list* add_pattern_list (struct dir_struct*,int ,char const*) ;
 scalar_t__ add_patterns (char const*,char*,int ,struct pattern_list*,int *,struct oid_stat*) ;
 int die (int ,char const*) ;

__attribute__((used)) static void add_patterns_from_file_1(struct dir_struct *dir, const char *fname,
         struct oid_stat *oid_stat)
{
 struct pattern_list *pl;





 if (!dir->untracked)
  dir->unmanaged_exclude_files++;
 pl = add_pattern_list(dir, EXC_FILE, fname);
 if (add_patterns(fname, "", 0, pl, ((void*)0), oid_stat) < 0)
  die(_("cannot use %s as an exclude file"), fname);
}
