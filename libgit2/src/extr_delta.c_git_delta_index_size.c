
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t memsize; } ;
typedef TYPE_1__ git_delta_index ;


 int assert (TYPE_1__*) ;

size_t git_delta_index_size(git_delta_index *index)
{
 assert(index);

 return index->memsize;
}
