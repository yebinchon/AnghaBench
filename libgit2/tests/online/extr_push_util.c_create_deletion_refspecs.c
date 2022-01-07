
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_vector ;
struct TYPE_3__ {int name; } ;
typedef TYPE_1__ git_remote_head ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_git_pass (int ) ;
 int git_buf_detach (int *) ;
 int git_buf_putc (int *,char) ;
 int git_buf_puts (int *,int ) ;
 int git_reference_is_valid_name (int ) ;
 int git_vector_insert (int *,int ) ;
 scalar_t__ strcmp (int ,char*) ;

int create_deletion_refspecs(git_vector *out, const git_remote_head **heads, size_t heads_len)
{
 git_buf del_spec = GIT_BUF_INIT;
 size_t i;

 for (i = 0; i < heads_len; i++) {
  const git_remote_head *head = heads[i];

  if (!git_reference_is_valid_name(head->name))
   return 0;


  if (strcmp(head->name, "refs/heads/master")) {
   cl_git_pass(git_buf_putc(&del_spec, ':'));
   cl_git_pass(git_buf_puts(&del_spec, head->name));
   cl_git_pass(git_vector_insert(out, git_buf_detach(&del_spec)));
  }
 }

 return 0;
}
