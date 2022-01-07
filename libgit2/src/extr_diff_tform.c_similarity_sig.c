
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int ptr; } ;
struct TYPE_11__ {scalar_t__ src; size_t idx; int blob; TYPE_4__* file; int repo; int * odb_obj; TYPE_9__ data; } ;
typedef TYPE_2__ similarity_info ;
typedef int git_object ;
struct TYPE_12__ {TYPE_1__* metric; } ;
typedef TYPE_3__ git_diff_find_options ;
struct TYPE_13__ {scalar_t__ size; int id; int path; } ;
typedef TYPE_4__ git_diff_file ;
struct TYPE_10__ {int (* file_signature ) (void**,TYPE_4__*,int ,int ) ;int (* buffer_signature ) (void**,TYPE_4__*,int ,size_t,int ) ;int payload; } ;


 scalar_t__ GIT_ITERATOR_TYPE_WORKDIR ;
 int GIT_OBJECT_BLOB ;
 scalar_t__ git__is_sizet (scalar_t__) ;
 int git_blob_lookup (int *,int ,int *) ;
 int git_blob_rawcontent (int ) ;
 scalar_t__ git_blob_rawsize (int ) ;
 int git_buf_joinpath (TYPE_9__*,int ,int ) ;
 int git_error_clear () ;
 int git_object__from_odb_object (int **,int ,int *,int ) ;
 int git_path_isfile (int ) ;
 int git_repository_workdir (int ) ;
 int stub1 (void**,TYPE_4__*,int ,int ) ;
 int stub2 (void**,TYPE_4__*,int ,size_t,int ) ;

__attribute__((used)) static int similarity_sig(
 similarity_info *info,
 const git_diff_find_options *opts,
 void **cache)
{
 int error = 0;
 git_diff_file *file = info->file;

 if (info->src == GIT_ITERATOR_TYPE_WORKDIR) {
  if ((error = git_buf_joinpath(
   &info->data, git_repository_workdir(info->repo), file->path)) < 0)
   return error;


  if (!git_path_isfile(info->data.ptr))
   return 0;



  error = opts->metric->file_signature(
   &cache[info->idx], info->file,
   info->data.ptr, opts->metric->payload);
 } else {



  if (info->odb_obj != ((void*)0))
   error = git_object__from_odb_object(
    (git_object **)&info->blob, info->repo,
    info->odb_obj, GIT_OBJECT_BLOB);
  else
   error = git_blob_lookup(&info->blob, info->repo, &file->id);

  if (error < 0) {

   git_error_clear();
  } else {
   size_t sz;


   if (file->size != git_blob_rawsize(info->blob))
    file->size = git_blob_rawsize(info->blob);

   sz = (size_t)(git__is_sizet(file->size) ? file->size : -1);

   error = opts->metric->buffer_signature(
    &cache[info->idx], info->file,
    git_blob_rawcontent(info->blob), sz, opts->metric->payload);
  }
 }

 return error;
}
