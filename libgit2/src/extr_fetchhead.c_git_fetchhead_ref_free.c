
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* ref_name; struct TYPE_4__* remote_url; } ;
typedef TYPE_1__ git_fetchhead_ref ;


 int git__free (TYPE_1__*) ;

void git_fetchhead_ref_free(git_fetchhead_ref *fetchhead_ref)
{
 if (fetchhead_ref == ((void*)0))
  return;

 git__free(fetchhead_ref->remote_url);
 git__free(fetchhead_ref->ref_name);
 git__free(fetchhead_ref);
}
