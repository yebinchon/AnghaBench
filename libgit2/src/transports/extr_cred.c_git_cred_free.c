
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* free ) (TYPE_1__*) ;} ;
typedef TYPE_1__ git_cred ;


 int stub1 (TYPE_1__*) ;

void git_cred_free(git_cred *cred)
{
 if (!cred)
  return;

 cred->free(cred);
}
