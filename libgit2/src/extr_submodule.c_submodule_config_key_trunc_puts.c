
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int git_buf ;


 int git_buf_puts (int *,char const*) ;
 scalar_t__ git_buf_rfind (int *,char) ;
 int git_buf_truncate (int *,size_t) ;

__attribute__((used)) static int submodule_config_key_trunc_puts(git_buf *key, const char *suffix)
{
 ssize_t idx = git_buf_rfind(key, '.');
 git_buf_truncate(key, (size_t)(idx + 1));
 return git_buf_puts(key, suffix);
}
