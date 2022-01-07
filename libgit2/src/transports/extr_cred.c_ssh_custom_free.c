
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct git_cred {int dummy; } ;
struct TYPE_5__ {struct TYPE_5__* publickey; struct TYPE_5__* username; } ;
typedef TYPE_1__ git_cred_ssh_custom ;


 int git__free (TYPE_1__*) ;
 int git__memzero (TYPE_1__*,size_t) ;
 size_t strlen (TYPE_1__*) ;

__attribute__((used)) static void ssh_custom_free(struct git_cred *cred)
{
 git_cred_ssh_custom *c = (git_cred_ssh_custom *)cred;

 git__free(c->username);

 if (c->publickey) {

  size_t key_len = strlen(c->publickey);
  git__memzero(c->publickey, key_len);
  git__free(c->publickey);
 }

 git__free(c);
}
