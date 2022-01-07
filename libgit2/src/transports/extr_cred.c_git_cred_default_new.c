
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int free; int credtype; } ;
typedef TYPE_1__ git_cred_default ;
typedef TYPE_1__ git_cred ;


 int GIT_CREDTYPE_DEFAULT ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int assert (TYPE_1__**) ;
 int default_free ;
 TYPE_1__* git__calloc (int,int) ;

int git_cred_default_new(git_cred **cred)
{
 git_cred_default *c;

 assert(cred);

 c = git__calloc(1, sizeof(git_cred_default));
 GIT_ERROR_CHECK_ALLOC(c);

 c->credtype = GIT_CREDTYPE_DEFAULT;
 c->free = default_free;

 *cred = c;
 return 0;
}
