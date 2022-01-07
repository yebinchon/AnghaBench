
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int free; int credtype; } ;
struct TYPE_7__ {TYPE_2__ parent; struct TYPE_7__* username; void* password; } ;
typedef TYPE_1__ git_cred_userpass_plaintext ;
typedef TYPE_2__ git_cred ;


 int GIT_CREDTYPE_USERPASS_PLAINTEXT ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int assert (int ) ;
 int git__free (TYPE_1__*) ;
 TYPE_1__* git__malloc (int) ;
 void* git__strdup (char const*) ;
 int plaintext_free ;

int git_cred_userpass_plaintext_new(
 git_cred **cred,
 const char *username,
 const char *password)
{
 git_cred_userpass_plaintext *c;

 assert(cred && username && password);

 c = git__malloc(sizeof(git_cred_userpass_plaintext));
 GIT_ERROR_CHECK_ALLOC(c);

 c->parent.credtype = GIT_CREDTYPE_USERPASS_PLAINTEXT;
 c->parent.free = plaintext_free;
 c->username = git__strdup(username);

 if (!c->username) {
  git__free(c);
  return -1;
 }

 c->password = git__strdup(password);

 if (!c->password) {
  git__free(c->username);
  git__free(c);
  return -1;
 }

 *cred = &c->parent;
 return 0;
}
