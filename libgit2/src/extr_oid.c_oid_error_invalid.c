
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_INVALID ;
 int git_error_set (int ,char*,char const*) ;

__attribute__((used)) static int oid_error_invalid(const char *msg)
{
 git_error_set(GIT_ERROR_INVALID, "unable to parse OID - %s", msg);
 return -1;
}
