
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* attributes; int apply; int shutdown; int version; } ;
typedef TYPE_1__ git_filter ;


 int GIT_FILTER_VERSION ;
 TYPE_1__* git__calloc (int,int) ;
 int git_filter_free ;
 int ident_apply ;

git_filter *git_ident_filter_new(void)
{
 git_filter *f = git__calloc(1, sizeof(git_filter));
 if (f == ((void*)0))
  return ((void*)0);

 f->version = GIT_FILTER_VERSION;
 f->attributes = "+ident";
 f->shutdown = git_filter_free;
 f->apply = ident_apply;

 return f;
}
