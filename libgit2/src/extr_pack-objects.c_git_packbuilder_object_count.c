
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t nr_objects; } ;
typedef TYPE_1__ git_packbuilder ;



size_t git_packbuilder_object_count(git_packbuilder *pb)
{
 return pb->nr_objects;
}
