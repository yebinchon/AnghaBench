
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_signature ;
struct TYPE_3__ {scalar_t__ ident_email; scalar_t__ ident_name; } ;
typedef TYPE_1__ git_repository ;


 int git_signature_now (int **,scalar_t__,scalar_t__) ;

int configured_ident(git_signature **out, const git_repository *repo)
{
 if (repo->ident_name && repo->ident_email)
  return git_signature_now(out, repo->ident_name, repo->ident_email);


 return -1;
}
