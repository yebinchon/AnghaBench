
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tree; } ;
typedef TYPE_1__ tree_reader ;
typedef int git_tree_entry ;
typedef int git_reader ;
typedef int git_oid ;
typedef scalar_t__ git_off_t ;
typedef int git_filemode_t ;
typedef int git_buf ;
typedef int git_blob ;


 int GIT_ERROR_CHECK_BLOBSIZE (scalar_t__) ;
 int git_blob_free (int *) ;
 int git_blob_lookup (int **,int ,int ) ;
 int git_blob_rawcontent (int *) ;
 scalar_t__ git_blob_rawsize (int *) ;
 int git_buf_set (int *,int ,size_t) ;
 int git_oid_cpy (int *,int ) ;
 int git_tree_entry_bypath (int **,int ,char const*) ;
 int git_tree_entry_filemode (int *) ;
 int git_tree_entry_free (int *) ;
 int git_tree_entry_id (int *) ;
 int git_tree_owner (int ) ;

__attribute__((used)) static int tree_reader_read(
 git_buf *out,
 git_oid *out_id,
 git_filemode_t *out_filemode,
 git_reader *_reader,
 const char *filename)
{
 tree_reader *reader = (tree_reader *)_reader;
 git_tree_entry *tree_entry = ((void*)0);
 git_blob *blob = ((void*)0);
 git_off_t blobsize;
 int error;

 if ((error = git_tree_entry_bypath(&tree_entry, reader->tree, filename)) < 0 ||
     (error = git_blob_lookup(&blob, git_tree_owner(reader->tree), git_tree_entry_id(tree_entry))) < 0)
  goto done;

 blobsize = git_blob_rawsize(blob);
 GIT_ERROR_CHECK_BLOBSIZE(blobsize);

 if ((error = git_buf_set(out, git_blob_rawcontent(blob), (size_t)blobsize)) < 0)
  goto done;

 if (out_id)
  git_oid_cpy(out_id, git_tree_entry_id(tree_entry));

 if (out_filemode)
  *out_filemode = git_tree_entry_filemode(tree_entry);

done:
 git_blob_free(blob);
 git_tree_entry_free(tree_entry);
 return error;
}
