
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int dummy; } ;
struct strbuf {int buf; } ;
struct dirent {int d_name; } ;
typedef int DIR ;


 int ALLOC_ARRAY (struct worktree**,int) ;
 int ALLOC_GROW (struct worktree**,int,int) ;
 unsigned int GWT_SORT_LINKED ;
 int QSORT (struct worktree**,int,int ) ;
 struct strbuf STRBUF_INIT ;
 int closedir (int *) ;
 int compare_worktree ;
 int get_git_common_dir () ;
 struct worktree* get_linked_worktree (int ) ;
 struct worktree* get_main_worktree () ;
 scalar_t__ is_dot_or_dotdot (int ) ;
 int mark_current_worktree (struct worktree**) ;
 int * opendir (int ) ;
 struct dirent* readdir (int *) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_release (struct strbuf*) ;

struct worktree **get_worktrees(unsigned flags)
{
 struct worktree **list = ((void*)0);
 struct strbuf path = STRBUF_INIT;
 DIR *dir;
 struct dirent *d;
 int counter = 0, alloc = 2;

 ALLOC_ARRAY(list, alloc);

 list[counter++] = get_main_worktree();

 strbuf_addf(&path, "%s/worktrees", get_git_common_dir());
 dir = opendir(path.buf);
 strbuf_release(&path);
 if (dir) {
  while ((d = readdir(dir)) != ((void*)0)) {
   struct worktree *linked = ((void*)0);
   if (is_dot_or_dotdot(d->d_name))
    continue;

   if ((linked = get_linked_worktree(d->d_name))) {
    ALLOC_GROW(list, counter + 1, alloc);
    list[counter++] = linked;
   }
  }
  closedir(dir);
 }
 ALLOC_GROW(list, counter + 1, alloc);
 list[counter] = ((void*)0);

 if (flags & GWT_SORT_LINKED)




  QSORT(list + 1, counter - 1, compare_worktree);

 mark_current_worktree(list);
 return list;
}
