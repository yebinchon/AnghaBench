
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_SSL ;
 int git_error_set (int ,char*) ;

int git_openssl_set_locking(void)
{
 git_error_set(GIT_ERROR_SSL, "libgit2 was not built with OpenSSL support");
 return -1;
}
