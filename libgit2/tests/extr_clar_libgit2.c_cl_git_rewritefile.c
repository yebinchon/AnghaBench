
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int cl_git_write2file (char const*,char const*,int ,int,int) ;

void cl_git_rewritefile(const char *path, const char *content)
{
 cl_git_write2file(path, content, 0, O_WRONLY | O_CREAT | O_TRUNC, 0644);
}
