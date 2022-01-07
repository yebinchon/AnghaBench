
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_credtype_t ;
struct TYPE_7__ {int free; int credtype; } ;
struct TYPE_6__ {TYPE_2__ parent; struct TYPE_6__* passphrase; struct TYPE_6__* publickey; struct TYPE_6__* privatekey; struct TYPE_6__* username; } ;
typedef TYPE_1__ git_cred_ssh_key ;
typedef TYPE_2__ git_cred ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int assert (int ) ;
 TYPE_1__* git__calloc (int,int) ;
 void* git__strdup (char const*) ;
 int ssh_key_free ;

__attribute__((used)) static int git_cred_ssh_key_type_new(
 git_cred **cred,
 const char *username,
 const char *publickey,
 const char *privatekey,
 const char *passphrase,
 git_credtype_t credtype)
{
 git_cred_ssh_key *c;

 assert(username && cred && privatekey);

 c = git__calloc(1, sizeof(git_cred_ssh_key));
 GIT_ERROR_CHECK_ALLOC(c);

 c->parent.credtype = credtype;
 c->parent.free = ssh_key_free;

 c->username = git__strdup(username);
 GIT_ERROR_CHECK_ALLOC(c->username);

 c->privatekey = git__strdup(privatekey);
 GIT_ERROR_CHECK_ALLOC(c->privatekey);

 if (publickey) {
  c->publickey = git__strdup(publickey);
  GIT_ERROR_CHECK_ALLOC(c->publickey);
 }

 if (passphrase) {
  c->passphrase = git__strdup(passphrase);
  GIT_ERROR_CHECK_ALLOC(c->passphrase);
 }

 *cred = &c->parent;
 return 0;
}
