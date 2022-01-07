
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int string; int dst; int src; } ;
typedef TYPE_1__ git_refspec ;


 int git__free (int ) ;
 int memset (TYPE_1__*,int,int) ;

void git_refspec__dispose(git_refspec *refspec)
{
 if (refspec == ((void*)0))
  return;

 git__free(refspec->src);
 git__free(refspec->dst);
 git__free(refspec->string);

 memset(refspec, 0x0, sizeof(git_refspec));
}
