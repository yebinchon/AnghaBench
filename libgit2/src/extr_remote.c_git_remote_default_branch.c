
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ name; int oid; scalar_t__ symref_target; } ;
typedef TYPE_1__ git_remote_head ;
typedef int git_remote ;
typedef int git_oid ;
typedef int git_buf ;


 int GIT_ENOTFOUND ;
 int GIT_HEAD_FILE ;
 int GIT_REFS_HEADS_DIR ;
 int GIT_REFS_HEADS_MASTER_FILE ;
 int assert (int *) ;
 scalar_t__ git__prefixcmp (scalar_t__,int ) ;
 int git__strcmp (int ,scalar_t__) ;
 int git_buf_puts (int *,scalar_t__) ;
 int git_buf_sanitize (int *) ;
 scalar_t__ git_oid_cmp (int const*,int *) ;
 int git_remote_ls (TYPE_1__ const***,size_t*,int *) ;
 scalar_t__ strcmp (scalar_t__,int ) ;

int git_remote_default_branch(git_buf *out, git_remote *remote)
{
 const git_remote_head **heads;
 const git_remote_head *guess = ((void*)0);
 const git_oid *head_id;
 size_t heads_len, i;
 int error;

 assert(out);

 if ((error = git_remote_ls(&heads, &heads_len, remote)) < 0)
  return error;

 if (heads_len == 0)
  return GIT_ENOTFOUND;

 if (strcmp(heads[0]->name, GIT_HEAD_FILE))
  return GIT_ENOTFOUND;

 git_buf_sanitize(out);

 if (heads[0]->symref_target)
  return git_buf_puts(out, heads[0]->symref_target);






 head_id = &heads[0]->oid;

 for (i = 1; i < heads_len; i++) {
  if (git_oid_cmp(head_id, &heads[i]->oid))
   continue;

  if (git__prefixcmp(heads[i]->name, GIT_REFS_HEADS_DIR))
   continue;

  if (!guess) {
   guess = heads[i];
   continue;
  }

  if (!git__strcmp(GIT_REFS_HEADS_MASTER_FILE, heads[i]->name)) {
   guess = heads[i];
   break;
  }
 }

 if (!guess)
  return GIT_ENOTFOUND;

 return git_buf_puts(out, guess->name);
}
