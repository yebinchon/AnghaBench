
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* attributes; int shutdown; int stream; int version; } ;
typedef TYPE_1__ git_filter ;


 int GIT_FILTER_VERSION ;
 int cl_assert (TYPE_1__*) ;
 int erroneous_filter_free ;
 int erroneous_filter_stream ;
 TYPE_1__* git__calloc (int,int) ;

git_filter *create_erroneous_filter(const char *attrs)
{
 git_filter *filter = git__calloc(1, sizeof(git_filter));
 cl_assert(filter);

 filter->version = GIT_FILTER_VERSION;
 filter->attributes = attrs;
 filter->stream = erroneous_filter_stream;
 filter->shutdown = erroneous_filter_free;

 return filter;
}
