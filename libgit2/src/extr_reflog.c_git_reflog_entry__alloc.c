
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reflog_entry ;


 int * git__calloc (int,int) ;

git_reflog_entry *git_reflog_entry__alloc(void)
{
 return git__calloc(1, sizeof(git_reflog_entry));
}
