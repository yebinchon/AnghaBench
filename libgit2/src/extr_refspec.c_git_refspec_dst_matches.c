
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dst; } ;
typedef TYPE_1__ git_refspec ;


 scalar_t__ wildmatch (int *,char const*,int ) ;

int git_refspec_dst_matches(const git_refspec *refspec, const char *refname)
{
 if (refspec == ((void*)0) || refspec->dst == ((void*)0))
  return 0;

 return (wildmatch(refspec->dst, refname, 0) == 0);
}
