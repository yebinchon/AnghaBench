
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_cred {int dummy; } ;


 int git__free (struct git_cred*) ;

__attribute__((used)) static void username_free(struct git_cred *cred)
{
 git__free(cred);
}
