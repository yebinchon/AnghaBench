
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_cred {int dummy; } ;
typedef int git_cred_default ;


 int git__free (int *) ;

__attribute__((used)) static void default_free(struct git_cred *cred)
{
 git_cred_default *c = (git_cred_default *)cred;

 git__free(c);
}
