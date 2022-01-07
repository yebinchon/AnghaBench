
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int free; int credtype; } ;
struct TYPE_6__ {int username; TYPE_1__ parent; } ;
typedef TYPE_2__ git_cred_username ;
typedef int git_cred ;


 int GIT_CREDTYPE_USERNAME ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,size_t,int) ;
 int assert (int **) ;
 TYPE_2__* git__malloc (size_t) ;
 int memcpy (int ,char const*,size_t) ;
 size_t strlen (char const*) ;
 int username_free ;

int git_cred_username_new(git_cred **cred, const char *username)
{
 git_cred_username *c;
 size_t len, allocsize;

 assert(cred);

 len = strlen(username);

 GIT_ERROR_CHECK_ALLOC_ADD(&allocsize, sizeof(git_cred_username), len);
 GIT_ERROR_CHECK_ALLOC_ADD(&allocsize, allocsize, 1);
 c = git__malloc(allocsize);
 GIT_ERROR_CHECK_ALLOC(c);

 c->parent.credtype = GIT_CREDTYPE_USERNAME;
 c->parent.free = username_free;
 memcpy(c->username, username, len + 1);

 *cred = (git_cred *) c;
 return 0;
}
