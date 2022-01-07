
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_3__ {int const hash; } ;
typedef TYPE_1__ git_indexer ;



const git_oid *git_indexer_hash(const git_indexer *idx)
{
 return &idx->hash;
}
