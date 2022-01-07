
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int repo; int index; } ;
typedef TYPE_1__ index_reader ;
typedef int git_reader ;
typedef int git_oid ;
struct TYPE_5__ {int mode; int id; } ;
typedef TYPE_2__ git_index_entry ;
typedef int git_filemode_t ;
typedef int git_buf ;
typedef int git_blob ;


 int GIT_ENOTFOUND ;
 int git_blob__getbuf (int *,int *) ;
 int git_blob_free (int *) ;
 int git_blob_lookup (int **,int ,int *) ;
 TYPE_2__* git_index_get_bypath (int ,char const*,int ) ;
 int git_oid_cpy (int *,int *) ;

__attribute__((used)) static int index_reader_read(
 git_buf *out,
 git_oid *out_id,
 git_filemode_t *out_filemode,
 git_reader *_reader,
 const char *filename)
{
 index_reader *reader = (index_reader *)_reader;
 const git_index_entry *entry;
 git_blob *blob;
 int error;

 if ((entry = git_index_get_bypath(reader->index, filename, 0)) == ((void*)0))
  return GIT_ENOTFOUND;

 if ((error = git_blob_lookup(&blob, reader->repo, &entry->id)) < 0)
  goto done;

 if (out_id)
  git_oid_cpy(out_id, &entry->id);

 if (out_filemode)
  *out_filemode = entry->mode;

 error = git_blob__getbuf(out, blob);

done:
 git_blob_free(blob);
 return error;
}
