
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ credtype; } ;
typedef TYPE_1__ git_cred ;


 scalar_t__ GIT_CREDTYPE_DEFAULT ;

int git_cred_has_username(git_cred *cred)
{
 if (cred->credtype == GIT_CREDTYPE_DEFAULT)
  return 0;

 return 1;
}
