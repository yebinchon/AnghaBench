
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_NET ;
 int errno ;
 int git_error_set (int ,char*,char const*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static void net_set_error(const char *str)
{
 git_error_set(GIT_ERROR_NET, "%s: %s", str, strerror(errno));
}
