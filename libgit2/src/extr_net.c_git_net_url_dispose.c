
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * password; int * username; int * path; int * port; int * host; int * scheme; } ;
typedef TYPE_1__ git_net_url ;


 int git__free (int *) ;
 int git__memzero (int *,int ) ;
 int strlen (int *) ;

void git_net_url_dispose(git_net_url *url)
{
 if (url->username)
  git__memzero(url->username, strlen(url->username));

 if (url->password)
  git__memzero(url->password, strlen(url->password));

 git__free(url->scheme); url->scheme = ((void*)0);
 git__free(url->host); url->host = ((void*)0);
 git__free(url->port); url->port = ((void*)0);
 git__free(url->path); url->path = ((void*)0);
 git__free(url->username); url->username = ((void*)0);
 git__free(url->password); url->password = ((void*)0);
}
