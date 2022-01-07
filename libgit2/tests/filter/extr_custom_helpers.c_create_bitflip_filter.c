
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* attributes; int apply; int shutdown; int version; } ;
typedef TYPE_1__ git_filter ;


 int GIT_FILTER_VERSION ;
 int bitflip_filter_apply ;
 int bitflip_filter_free ;
 int cl_assert (TYPE_1__*) ;
 TYPE_1__* git__calloc (int,int) ;

git_filter *create_bitflip_filter(void)
{
 git_filter *filter = git__calloc(1, sizeof(git_filter));
 cl_assert(filter);

 filter->version = GIT_FILTER_VERSION;
 filter->attributes = "+bitflip";
 filter->shutdown = bitflip_filter_free;
 filter->apply = bitflip_filter_apply;

 return filter;
}
