
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* attributes; int cleanup; int apply; int check; int shutdown; int * initialize; int version; } ;
struct crlf_filter {TYPE_1__ f; } ;
typedef int git_filter ;


 int GIT_FILTER_VERSION ;
 int crlf_apply ;
 int crlf_check ;
 int crlf_cleanup ;
 struct crlf_filter* git__calloc (int,int) ;
 int git_filter_free ;

git_filter *git_crlf_filter_new(void)
{
 struct crlf_filter *f = git__calloc(1, sizeof(struct crlf_filter));
 if (f == ((void*)0))
  return ((void*)0);

 f->f.version = GIT_FILTER_VERSION;
 f->f.attributes = "crlf eol text";
 f->f.initialize = ((void*)0);
 f->f.shutdown = git_filter_free;
 f->f.check = crlf_check;
 f->f.apply = crlf_apply;
 f->f.cleanup = crlf_cleanup;

 return (git_filter *)f;
}
