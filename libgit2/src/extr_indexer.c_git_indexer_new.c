
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int opts ;
typedef int git_odb ;
struct TYPE_13__ {int verify; int progress_cb_payload; int progress_cb; } ;
typedef TYPE_1__ git_indexer_options ;
struct TYPE_14__ {unsigned int mode; int do_fsync; TYPE_5__* pack; int do_verify; int expected_oids; int entry_data; int trailer; int hash_ctx; int progress_payload; int progress_cb; int * odb; } ;
typedef TYPE_2__ git_indexer ;
typedef int git_buf ;
struct TYPE_16__ {int fd; } ;
struct TYPE_15__ {int pack_name; TYPE_6__ mwf; } ;


 int GIT_BUF_INIT ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 TYPE_1__ GIT_INDEXER_OPTIONS_INIT ;
 unsigned int GIT_PACK_FILE_MODE ;
 TYPE_2__* git__calloc (int,int) ;
 int git__free (TYPE_2__*) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_init (int *,int ) ;
 int git_buf_joinpath (int *,char const*,char const*) ;
 scalar_t__ git_buf_len (int *) ;
 int git_futils_mktmp (int *,int ,unsigned int) ;
 int git_hash_ctx_init (int *) ;
 int git_mwindow_file_register (TYPE_6__*) ;
 int git_oidmap_new (int *) ;
 int git_packfile_alloc (TYPE_5__**,int ) ;
 scalar_t__ git_repository__fsync_gitdir ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int p_close (int) ;
 int p_unlink (int ) ;

int git_indexer_new(
  git_indexer **out,
  const char *prefix,
  unsigned int mode,
  git_odb *odb,
  git_indexer_options *in_opts)
{
 git_indexer_options opts = GIT_INDEXER_OPTIONS_INIT;
 git_indexer *idx;
 git_buf path = GIT_BUF_INIT, tmp_path = GIT_BUF_INIT;
 static const char suff[] = "/pack";
 int error, fd = -1;

 if (in_opts)
  memcpy(&opts, in_opts, sizeof(opts));

 idx = git__calloc(1, sizeof(git_indexer));
 GIT_ERROR_CHECK_ALLOC(idx);
 idx->odb = odb;
 idx->progress_cb = opts.progress_cb;
 idx->progress_payload = opts.progress_cb_payload;
 idx->mode = mode ? mode : GIT_PACK_FILE_MODE;
 git_hash_ctx_init(&idx->hash_ctx);
 git_hash_ctx_init(&idx->trailer);
 git_buf_init(&idx->entry_data, 0);

 if ((error = git_oidmap_new(&idx->expected_oids)) < 0)
  goto cleanup;

 idx->do_verify = opts.verify;

 if (git_repository__fsync_gitdir)
  idx->do_fsync = 1;

 error = git_buf_joinpath(&path, prefix, suff);
 if (error < 0)
  goto cleanup;

 fd = git_futils_mktmp(&tmp_path, git_buf_cstr(&path), idx->mode);
 git_buf_dispose(&path);
 if (fd < 0)
  goto cleanup;

 error = git_packfile_alloc(&idx->pack, git_buf_cstr(&tmp_path));
 git_buf_dispose(&tmp_path);

 if (error < 0)
  goto cleanup;

 idx->pack->mwf.fd = fd;
 if ((error = git_mwindow_file_register(&idx->pack->mwf)) < 0)
  goto cleanup;

 *out = idx;
 return 0;

cleanup:
 if (fd != -1)
  p_close(fd);

 if (git_buf_len(&tmp_path) > 0)
  p_unlink(git_buf_cstr(&tmp_path));

 if (idx->pack != ((void*)0))
  p_unlink(idx->pack->pack_name);

 git_buf_dispose(&path);
 git_buf_dispose(&tmp_path);
 git__free(idx);
 return -1;
}
