
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int do_fsync; } ;
typedef TYPE_1__ git_indexer ;



void git_indexer__set_fsync(git_indexer *idx, int do_fsync)
{
 idx->do_fsync = !!do_fsync;
}
