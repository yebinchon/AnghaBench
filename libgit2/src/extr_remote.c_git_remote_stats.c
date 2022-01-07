
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int const stats; } ;
typedef TYPE_1__ git_remote ;
typedef int git_indexer_progress ;


 int assert (TYPE_1__*) ;

const git_indexer_progress *git_remote_stats(git_remote *remote)
{
 assert(remote);
 return &remote->stats;
}
