
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_diff_options ;
struct TYPE_11__ {size_t buflen; scalar_t__ buf; scalar_t__ blob; } ;
typedef TYPE_2__ git_diff_file_content_src ;
struct TYPE_10__ {size_t len; char* data; } ;
struct TYPE_12__ {TYPE_1__ map; TYPE_4__* file; int flags; int blob; int * repo; } ;
typedef TYPE_3__ git_diff_file_content ;
struct TYPE_13__ {size_t size; void* id_abbrev; int id; int mode; int flags; } ;
typedef TYPE_4__ git_diff_file ;
typedef int git_blob ;


 int GIT_DIFF_FLAG_VALID_ID ;
 int GIT_DIFF_FLAG__FREE_BLOB ;
 int GIT_DIFF_FLAG__LOADED ;
 int GIT_DIFF_FLAG__NO_DATA ;
 int GIT_FILEMODE_BLOB ;
 int GIT_OBJECT_BLOB ;
 void* GIT_OID_HEXSZ ;
 int diff_file_content_init_common (TYPE_3__*,int const*) ;
 int git_blob_dup (int **,int *) ;
 int git_blob_id (scalar_t__) ;
 scalar_t__ git_blob_rawcontent (scalar_t__) ;
 size_t git_blob_rawsize (scalar_t__) ;
 int git_odb_hash (int *,scalar_t__,size_t,int ) ;
 int git_oid_cpy (int *,int ) ;
 int memset (TYPE_3__*,int ,int) ;

int git_diff_file_content__init_from_src(
 git_diff_file_content *fc,
 git_repository *repo,
 const git_diff_options *opts,
 const git_diff_file_content_src *src,
 git_diff_file *as_file)
{
 memset(fc, 0, sizeof(*fc));
 fc->repo = repo;
 fc->file = as_file;

 if (!src->blob && !src->buf) {
  fc->flags |= GIT_DIFF_FLAG__NO_DATA;
 } else {
  fc->flags |= GIT_DIFF_FLAG__LOADED;
  fc->file->flags |= GIT_DIFF_FLAG_VALID_ID;
  fc->file->mode = GIT_FILEMODE_BLOB;

  if (src->blob) {
   git_blob_dup((git_blob **)&fc->blob, (git_blob *) src->blob);
   fc->file->size = git_blob_rawsize(src->blob);
   git_oid_cpy(&fc->file->id, git_blob_id(src->blob));
   fc->file->id_abbrev = GIT_OID_HEXSZ;

   fc->map.len = (size_t)fc->file->size;
   fc->map.data = (char *)git_blob_rawcontent(src->blob);

   fc->flags |= GIT_DIFF_FLAG__FREE_BLOB;
  } else {
   fc->file->size = src->buflen;
   git_odb_hash(&fc->file->id, src->buf, src->buflen, GIT_OBJECT_BLOB);
   fc->file->id_abbrev = GIT_OID_HEXSZ;

   fc->map.len = src->buflen;
   fc->map.data = (char *)src->buf;
  }
 }

 return diff_file_content_init_common(fc, opts);
}
