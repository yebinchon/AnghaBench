
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int commondir; } ;
typedef TYPE_1__ git_repository ;
typedef int git_buf ;


 int git_buf_clear (int *) ;
 int git_buf_printf (int *,char*,int ,char const*,char const*) ;

__attribute__((used)) static int get_worktree_file_path(git_buf *out, git_repository *repo, const char *worktree, const char *file)
{
 git_buf_clear(out);
 return git_buf_printf(out, "%s/worktrees/%s/%s", repo->commondir, worktree, file);
}
