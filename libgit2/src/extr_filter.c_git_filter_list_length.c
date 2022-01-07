
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filters; } ;
typedef TYPE_1__ git_filter_list ;


 size_t git_array_size (int ) ;

size_t git_filter_list_length(const git_filter_list *fl)
{
 return fl ? git_array_size(fl->filters) : 0;
}
