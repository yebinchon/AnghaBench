
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* nodes; } ;
typedef TYPE_1__ git_oid_shorten ;


 int git__free (TYPE_1__*) ;

void git_oid_shorten_free(git_oid_shorten *os)
{
 if (os == ((void*)0))
  return;

 git__free(os->nodes);
 git__free(os);
}
