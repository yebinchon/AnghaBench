
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_name {int prio; int name_checked; int path; scalar_t__ tag; int sha1; } ;
typedef int git_repository ;
typedef int git_buf ;


 int GIT_ERROR_TAG ;
 int git_buf_printf (int *,char*,int ) ;
 int git_error_set (int ,char*,int ) ;
 scalar_t__ git_tag_lookup (scalar_t__*,int *,int *) ;
 int git_tag_name (scalar_t__) ;

__attribute__((used)) static int display_name(git_buf *buf, git_repository *repo, struct commit_name *n)
{
 if (n->prio == 2 && !n->tag) {
  if (git_tag_lookup(&n->tag, repo, &n->sha1) < 0) {
   git_error_set(GIT_ERROR_TAG, "annotated tag '%s' not available", n->path);
   return -1;
  }
 }

 if (n->tag && !n->name_checked) {
  if (!git_tag_name(n->tag)) {
   git_error_set(GIT_ERROR_TAG, "annotated tag '%s' has no embedded name", n->path);
   return -1;
  }






  n->name_checked = 1;
 }

 if (n->tag)
  git_buf_printf(buf, "%s", git_tag_name(n->tag));
 else
  git_buf_printf(buf, "%s", n->path);

 return 0;
}
