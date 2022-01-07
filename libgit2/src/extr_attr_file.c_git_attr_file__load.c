
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct stat {int st_size; int st_mode; } ;
typedef int git_tree_entry ;
typedef int git_tree ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_off_t ;
typedef int git_buf ;
typedef scalar_t__ git_bom_t ;
typedef int git_blob ;
struct TYPE_14__ {int key; } ;
typedef TYPE_2__ git_attr_session ;
typedef int const git_attr_file_source ;
typedef int (* git_attr_file_parser ) (int *,TYPE_3__*,char const*,int) ;
struct TYPE_16__ {int path; int fullpath; } ;
typedef TYPE_4__ git_attr_file_entry ;
struct TYPE_13__ {int stamp; int oid; } ;
struct TYPE_15__ {int nonexistent; TYPE_1__ cache_data; int session_key; } ;
typedef TYPE_3__ git_attr_file ;






 scalar_t__ GIT_BOM_UTF8 ;
 int GIT_BUF_INIT ;
 int GIT_ERROR_CHECK_BLOBSIZE (int ) ;
 int GIT_ERROR_INVALID ;
 int S_ISDIR (int ) ;
 int attr_file_oid_from_index (int *,int *,int ) ;
 int git_attr_file__free (TYPE_3__*) ;
 int git_attr_file__new (TYPE_3__**,TYPE_4__*,int const) ;
 int git_blob_free (int *) ;
 int git_blob_id (int *) ;
 int git_blob_lookup (int **,int *,int *) ;
 int git_blob_rawcontent (int *) ;
 int git_blob_rawsize (int *) ;
 char* git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_put (int *,int ,size_t) ;
 int git_buf_text_detect_bom (scalar_t__*,int *) ;
 int git_error_set (int ,char*,int const) ;
 int git_futils_filestamp_set_from_stat (int *,struct stat*) ;
 int git_futils_open_ro (int ) ;
 int git_futils_readbuffer_fd (int *,int,size_t) ;
 int git_oid_cpy (int *,int ) ;
 int git_repository_head_tree (int **,int *) ;
 int git_tree_entry_bypath (int **,int *,int ) ;
 int git_tree_entry_free (int *) ;
 int * git_tree_entry_id (int *) ;
 int git_tree_free (int *) ;
 int git_tree_id (int *) ;
 int p_close (int) ;
 int p_stat (int ,struct stat*) ;

int git_attr_file__load(
 git_attr_file **out,
 git_repository *repo,
 git_attr_session *attr_session,
 git_attr_file_entry *entry,
 git_attr_file_source source,
 git_attr_file_parser parser,
 bool allow_macros)
{
 int error = 0;
 git_tree *tree = ((void*)0);
 git_tree_entry *tree_entry = ((void*)0);
 git_blob *blob = ((void*)0);
 git_buf content = GIT_BUF_INIT;
 const char *content_str;
 git_attr_file *file;
 struct stat st;
 bool nonexistent = 0;
 int bom_offset;
 git_bom_t bom;
 git_oid id;
 git_off_t blobsize;

 *out = ((void*)0);

 switch (source) {
 case 128:

  break;
 case 129: {
  if ((error = attr_file_oid_from_index(&id, repo, entry->path)) < 0 ||
   (error = git_blob_lookup(&blob, repo, &id)) < 0)
   return error;



  blobsize = git_blob_rawsize(blob);

  GIT_ERROR_CHECK_BLOBSIZE(blobsize);
  git_buf_put(&content, git_blob_rawcontent(blob), (size_t)blobsize);
  break;
 }
 case 131: {
  int fd = -1;




  if (p_stat(entry->fullpath, &st) < 0 ||
   S_ISDIR(st.st_mode) ||
   (fd = git_futils_open_ro(entry->fullpath)) < 0 ||
   (error = git_futils_readbuffer_fd(&content, fd, (size_t)st.st_size)) < 0)
   nonexistent = 1;

  if (fd >= 0)
   p_close(fd);

  break;
 }
 case 130: {
  if ((error = git_repository_head_tree(&tree, repo)) < 0 ||
      (error = git_tree_entry_bypath(&tree_entry, tree, entry->path)) < 0 ||
      (error = git_blob_lookup(&blob, repo, git_tree_entry_id(tree_entry))) < 0)
   goto cleanup;





  blobsize = git_blob_rawsize(blob);

  GIT_ERROR_CHECK_BLOBSIZE(blobsize);
  if ((error = git_buf_put(&content,
   git_blob_rawcontent(blob), (size_t)blobsize)) < 0)
   goto cleanup;

  break;
 }
 default:
  git_error_set(GIT_ERROR_INVALID, "unknown file source %d", source);
  return -1;
 }

 if ((error = git_attr_file__new(&file, entry, source)) < 0)
  goto cleanup;


 content_str = git_buf_cstr(&content);
 bom_offset = git_buf_text_detect_bom(&bom, &content);

 if (bom == GIT_BOM_UTF8)
  content_str += bom_offset;




 if (attr_session)
  file->session_key = attr_session->key;

 if (parser && (error = parser(repo, file, content_str, allow_macros)) < 0) {
  git_attr_file__free(file);
  goto cleanup;
 }


 if (nonexistent)
  file->nonexistent = 1;
 else if (source == 129)
  git_oid_cpy(&file->cache_data.oid, git_blob_id(blob));
 else if (source == 130)
  git_oid_cpy(&file->cache_data.oid, git_tree_id(tree));
 else if (source == 131)
  git_futils_filestamp_set_from_stat(&file->cache_data.stamp, &st);


 *out = file;

cleanup:
 git_blob_free(blob);
 git_tree_entry_free(tree_entry);
 git_tree_free(tree);
 git_buf_dispose(&content);

 return error;
}
