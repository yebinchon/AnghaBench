
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pack; } ;
typedef TYPE_2__ git_indexer ;
struct TYPE_7__ {int size; } ;
struct TYPE_5__ {TYPE_4__ mwf; } ;


 scalar_t__ GIT_OID_RAWSZ ;
 int git_mwindow_free_all (TYPE_4__*) ;

__attribute__((used)) static void seek_back_trailer(git_indexer *idx)
{
 idx->pack->mwf.size -= GIT_OID_RAWSZ;
 git_mwindow_free_all(&idx->pack->mwf);
}
