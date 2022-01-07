
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * url; int * repo; scalar_t__ connected; } ;
typedef TYPE_1__ transport_local ;
typedef int git_transport ;


 int git__free (int *) ;
 int git_repository_free (int *) ;

__attribute__((used)) static int local_close(git_transport *transport)
{
 transport_local *t = (transport_local *)transport;

 t->connected = 0;

 if (t->repo) {
  git_repository_free(t->repo);
  t->repo = ((void*)0);
 }

 if (t->url) {
  git__free(t->url);
  t->url = ((void*)0);
 }

 return 0;
}
