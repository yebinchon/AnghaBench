
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 scalar_t__ git_buf_printf (int *,char*,char const*) ;

__attribute__((used)) static int default_fetchspec_for_name(git_buf *buf, const char *name)
{
 if (git_buf_printf(buf, "+refs/heads/*:refs/remotes/%s/*", name) < 0)
  return -1;

 return 0;
}
