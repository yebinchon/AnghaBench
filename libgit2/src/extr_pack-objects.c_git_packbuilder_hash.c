
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const pack_oid; } ;
typedef TYPE_1__ git_packbuilder ;
typedef int git_oid ;



const git_oid *git_packbuilder_hash(git_packbuilder *pb)
{
 return &pb->pack_oid;
}
