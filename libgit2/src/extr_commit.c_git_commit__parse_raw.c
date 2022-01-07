
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int commit_parse (void*,char const*,size_t,int ) ;

int git_commit__parse_raw(void *commit, const char *data, size_t size)
{
 return commit_parse(commit, data, size, 0);
}
