
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_filter ;


 int GIT_UNUSED (int *) ;
 int git__free (void*) ;

__attribute__((used)) static void crlf_cleanup(
 git_filter *self,
 void *payload)
{
 GIT_UNUSED(self);
 git__free(payload);
}
