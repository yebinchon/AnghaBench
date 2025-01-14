
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int ptr; } ;
typedef TYPE_3__ git_buf ;
struct TYPE_12__ {int st_mode; } ;
struct TYPE_14__ {int id; int path; TYPE_2__ st; } ;
typedef TYPE_4__ filesystem_iterator_entry ;
struct TYPE_11__ {scalar_t__ type; int repo; } ;
struct TYPE_15__ {int root; TYPE_1__ base; } ;
typedef TYPE_5__ filesystem_iterator ;


 TYPE_3__ GIT_BUF_INIT ;
 scalar_t__ GIT_ITERATOR_TYPE_WORKDIR ;
 int GIT_OBJECT_BLOB ;
 int GIT_OID_RAWSZ ;
 scalar_t__ S_ISDIR (int ) ;
 int git_buf_dispose (TYPE_3__*) ;
 int git_buf_joinpath (TYPE_3__*,int ,int ) ;
 int git_odb_hashfile (int *,int ,int ) ;
 int git_repository_hashfile (int *,int ,int ,int ,int *) ;
 int memset (int *,int ,int ) ;

__attribute__((used)) static int filesystem_iterator_entry_hash(
 filesystem_iterator *iter,
 filesystem_iterator_entry *entry)
{
 git_buf fullpath = GIT_BUF_INIT;
 int error;

 if (S_ISDIR(entry->st.st_mode)) {
  memset(&entry->id, 0, GIT_OID_RAWSZ);
  return 0;
 }

 if (iter->base.type == GIT_ITERATOR_TYPE_WORKDIR)
  return git_repository_hashfile(&entry->id,
   iter->base.repo, entry->path, GIT_OBJECT_BLOB, ((void*)0));

 if (!(error = git_buf_joinpath(&fullpath, iter->root, entry->path)))
  error = git_odb_hashfile(&entry->id, fullpath.ptr, GIT_OBJECT_BLOB);

 git_buf_dispose(&fullpath);
 return error;
}
