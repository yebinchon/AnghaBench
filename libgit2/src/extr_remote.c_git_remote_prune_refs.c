
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prune_refs; } ;
typedef TYPE_1__ git_remote ;



int git_remote_prune_refs(const git_remote *remote)
{
 return remote->prune_refs;
}
