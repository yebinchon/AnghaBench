
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int flags; int mode; int repo; int path; } ;
typedef TYPE_2__ git_filter_source ;
struct TYPE_8__ {int flags; int mode; int path; int repo; } ;
struct TYPE_10__ {TYPE_1__ source; int path; } ;
typedef TYPE_3__ git_filter_list ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_3__*) ;
 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,size_t,int) ;
 TYPE_3__* git__calloc (int,size_t) ;
 int memcpy (int ,int ,size_t) ;
 size_t strlen (int ) ;

__attribute__((used)) static int filter_list_new(
 git_filter_list **out, const git_filter_source *src)
{
 git_filter_list *fl = ((void*)0);
 size_t pathlen = src->path ? strlen(src->path) : 0, alloclen;

 GIT_ERROR_CHECK_ALLOC_ADD(&alloclen, sizeof(git_filter_list), pathlen);
 GIT_ERROR_CHECK_ALLOC_ADD(&alloclen, alloclen, 1);

 fl = git__calloc(1, alloclen);
 GIT_ERROR_CHECK_ALLOC(fl);

 if (src->path)
  memcpy(fl->path, src->path, pathlen);
 fl->source.repo = src->repo;
 fl->source.path = fl->path;
 fl->source.mode = src->mode;
 fl->source.flags = src->flags;

 *out = fl;
 return 0;
}
