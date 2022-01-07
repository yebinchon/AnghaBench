
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* attributes; int shutdown; int cleanup; int apply; int check; int version; } ;
typedef TYPE_1__ git_filter ;


 int GIT_FILTER_VERSION ;
 int cl_assert (TYPE_1__*) ;
 TYPE_1__* git__calloc (int,int) ;
 int wildcard_filter_apply ;
 int wildcard_filter_check ;
 int wildcard_filter_cleanup ;
 int wildcard_filter_free ;

__attribute__((used)) static git_filter *create_wildcard_filter(void)
{
 git_filter *filter = git__calloc(1, sizeof(git_filter));
 cl_assert(filter);

 filter->version = GIT_FILTER_VERSION;
 filter->attributes = "filter=*";
 filter->check = wildcard_filter_check;
 filter->apply = wildcard_filter_apply;
 filter->cleanup = wildcard_filter_cleanup;
 filter->shutdown = wildcard_filter_free;

 return filter;
}
