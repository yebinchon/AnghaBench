
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int git_futils_readbuffer_updated (int *,char const*,int *,int *) ;

int git_futils_readbuffer(git_buf *buf, const char *path)
{
 return git_futils_readbuffer_updated(buf, path, ((void*)0), ((void*)0));
}
