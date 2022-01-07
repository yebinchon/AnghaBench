
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* email; struct TYPE_4__* name; } ;
typedef TYPE_1__ git_signature ;


 int git__free (TYPE_1__*) ;

void git_signature_free(git_signature *sig)
{
 if (sig == ((void*)0))
  return;

 git__free(sig->name);
 sig->name = ((void*)0);
 git__free(sig->email);
 sig->email = ((void*)0);
 git__free(sig);
}
