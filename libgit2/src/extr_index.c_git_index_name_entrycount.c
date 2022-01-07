
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t length; } ;
struct TYPE_6__ {TYPE_1__ names; } ;
typedef TYPE_2__ git_index ;


 int assert (TYPE_2__*) ;

size_t git_index_name_entrycount(git_index *index)
{
 assert(index);
 return index->names.length;
}
