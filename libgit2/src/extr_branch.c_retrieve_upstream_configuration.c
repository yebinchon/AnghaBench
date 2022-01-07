
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_REFS_HEADS_DIR ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_printf (int *,char const*,char const*) ;
 int git_config_get_string_buf (int *,int const*,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int retrieve_upstream_configuration(
 git_buf *out,
 const git_config *config,
 const char *canonical_branch_name,
 const char *format)
{
 git_buf buf = GIT_BUF_INIT;
 int error;

 if (git_buf_printf(&buf, format,
  canonical_branch_name + strlen(GIT_REFS_HEADS_DIR)) < 0)
   return -1;

 error = git_config_get_string_buf(out, config, git_buf_cstr(&buf));
 git_buf_dispose(&buf);
 return error;
}
