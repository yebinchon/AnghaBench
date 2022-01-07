
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int refspecs; } ;
typedef TYPE_1__ git_remote ;


 int add_refspec_to (int *,char const*,int) ;

__attribute__((used)) static int add_refspec(git_remote *remote, const char *string, bool is_fetch)
{
 return add_refspec_to(&remote->refspecs, string, is_fetch);
}
