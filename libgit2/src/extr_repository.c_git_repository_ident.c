
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ident_name; char* ident_email; } ;
typedef TYPE_1__ git_repository ;



int git_repository_ident(const char **name, const char **email, const git_repository *repo)
{
 *name = repo->ident_name;
 *email = repo->ident_email;

 return 0;
}
